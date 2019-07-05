<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customers extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		$this->load->model('customers_model','customers');
	}

	public function index()
	{
		$this->load->helper('url');
		$this->load->helper('form');
		
		$countries = $this->customers->get_list_active();

		$opt = array('1'=> 'Karyawan Aktif');
		foreach ($countries as $country) {
			$opt[$country] = $country;
		}

		$data['form_active'] = form_dropdown('',$opt,'','id="active" class="form-control"');
		$this->load->view('customers_view', $data);
	}

	public function ajax_list()
	{
		$list = $this->customers->get_datatables();
		$data = array();
		$no = $_POST['start'];
		foreach ($list as $customers) {
			$no++;
			$row = array();
			$row[] = $no;
			$row[] = $customers->nama;
			$row[] = $customers->nama_jabatan;
			$row[] = $customers->email;
			$row[] = $customers->handphone;
			$row[] = $customers->nama_status;
			$row[] = $customers->active;


			//add html for action
			$row[] = '<a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Edit" onclick="edit_person('."'".$customers->id."'".')"><i class="glyphicon glyphicon-pencil"></i> Edit</a>
				  <a class="btn btn-sm btn-danger" href="javascript:void(0)" title="Hapus" onclick="delete_person('."'".$customers->id."'".')"><i class="glyphicon glyphicon-trash"></i> Delete</a>';

			$data[] = $row;
		}

		$output = array(
						"draw" => $_POST['draw'],
						"recordsTotal" => $this->customers->count_all(),
						"recordsFiltered" => $this->customers->count_filtered(),
						"data" => $data,
				);
		//output to json format
		echo json_encode($output);
	}



		public function ajax_edit($id)
	{
		$data = $this->customers->get_by_id($id);
		// $data->dob = ($data->dob == '0000-00-00') ? '' : $data->dob;     // if 0000-00-00 set tu empty for datepicker compatibility
		echo json_encode($data);
	}



	private function _validate()
	{
		$data = array();
		$data['error_string'] = array();
		$data['inputerror'] = array();
		$data['status'] = TRUE;

		if($this->input->post('nama') == '')
		{
			$data['inputerror'][] = 'nama';
			$data['error_string'][] = 'First name is required';
			$data['status'] = FALSE;
		}

		if($this->input->post('email') == '')
		{
			$data['inputerror'][] = 'email';
			$data['error_string'][] = 'Last name is required';
			$data['status'] = FALSE;
		}

		// if($this->input->post('dob') == '')
		// {
		// 	$data['inputerror'][] = 'dob';
		// 	$data['error_string'][] = 'Date of Birth is required';
		// 	$data['status'] = FALSE;
		// }

		if($this->input->post('gender') == '')
		{
			$data['inputerror'][] = 'gender';
			$data['error_string'][] = 'Please select gender';
			$data['status'] = FALSE;
		}

		if($this->input->post('email') == '')
		{
			$data['inputerror'][] = 'email';
			$data['error_string'][] = 'Addess is required';
			$data['status'] = FALSE;
		}

		if($data['status'] === FALSE)
		{
			echo json_encode($data);
			exit();
		}
	}

}

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

}

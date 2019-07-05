<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Customers_model extends CI_Model {

	var $table = 'tb_karyawan k';
	var $column_order = array(null, 'k.nama','k.id_jabatan','k.email','.khandphone','k.id_status','k.active'); //set column field database for datatable orderable
	var $column_search = array('k.nama','k.id_jabatan','k.email','k.handphone','k.id_status','k.active'); //set column field database for datatable searchable 
	var $order = array('id' => 'asc'); // default order 

	public function __construct()
	{
		parent::__construct();
		$this->load->database();
	}

	private function _get_datatables_query()
	{
		
		//add custom filter here
		if($this->input->post('active'))
		{
		$this->db->where('k.active', $this->input->post('active'));
		}

		if ($this->input->post('berdasarkan')) 
		{
			$filter=$this->input->post('berdasarkan');
			if ($filter=='nama') {
				$this->db->like('k.nama', $this->input->post('keyword'));
			}elseif ($filter=='email') {
			$this->db->like('k.email', $this->input->post('keyword'));
			}elseif ($filter=='handphone') {
			$this->db->like('k.handphone', $this->input->post('keyword'));
			}
		}

		if($this->input->post('nama'))
		{
			$this->db->like('k.nama', $this->input->post('nama'));
		}
		if($this->input->post('email'))
		{
			$this->db->like('k.email', $this->input->post('email'));
		}
		if($this->input->post('k.handphone'))
		{
			$this->db->like('k.handphone', $this->input->post('handphone'));
		}



		$this->db->from($this->table);
		$this->db->join('tb_jabatan j','j.id_jabatan=k.id_jabatan','left');
		$this->db->join('tb_status s','s.id_status=k.id_status','left');
		$i = 0;
	
		foreach ($this->column_search as $item) // loop column 
		{
			if($_POST['search']['value']) // if datatable send POST for search
			{
				
				if($i===0) // first loop
				{
					$this->db->group_start(); // open bracket. query Where with OR clause better with bracket. because maybe can combine with other WHERE with AND.
					$this->db->like($item, $_POST['search']['value']);
				}
				else
				{
					$this->db->or_like($item, $_POST['search']['value']);
				}

				if(count($this->column_search) - 1 == $i) //last loop
					$this->db->group_end(); //close bracket
			}
			$i++;
		}
		
		if(isset($_POST['order'])) // here order processing
		{
			$this->db->order_by($this->column_order[$_POST['order']['0']['column']], $_POST['order']['0']['dir']);
		} 
		else if(isset($this->order))
		{
			$order = $this->order;
			$this->db->order_by(key($order), $order[key($order)]);
		}
	}

	public function get_datatables()
	{
		$this->_get_datatables_query();
		if($_POST['length'] != -1)
		$this->db->limit($_POST['length'], $_POST['start']);
		$query = $this->db->get();
		return $query->result();
	}

	public function count_filtered()
	{
		$this->_get_datatables_query();
		$query = $this->db->get();
		return $query->num_rows();
	}

	public function count_all()
	{
		$this->db->from($this->table);
		return $this->db->count_all_results();
	}

	public function get_list_active()
	{
		$this->db->select('k.active');
		$this->db->from($this->table);
		$this->db->order_by('k.active','asc');
		$query = $this->db->get();
		$result = $query->result();

		$countries = array();
		foreach ($result as $row) 
		{
			$countries[] = $row->active;
		}
		return $countries;
	}



	public function get_by_id($id)
	{
		$this->db->from($this->table);
		$this->db->join('tb_jabatan j','j.id_jabatan=k.id_jabatan','left');
		$this->db->join('tb_status s','s.id_status=k.id_status','left');
		$this->db->where('k.id',$id);
		$query = $this->db->get();

		return $query->row();
	}

}

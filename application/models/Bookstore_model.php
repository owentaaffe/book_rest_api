<!--
Assignment: BSc Mobile Web Applications, Digital Skills Acadeny

Student ID: WE60-1054
Filecreated: 2018/08/06
Reference Sources:
You Tube tutorial: https://www.youtube.com/watch?v=-xluREQBAUo&t=1491s
On-line tutorial: {
https://www.udemy.com/complete-codeigniter-course-from-basic-to-advanced/learn/v4/content
https://www.udemy.com/codeigniter-framework/learn/v4/content
}

@author: Owen Taaffe
@version: v1.0

-
Changelog:
* added getAllBooks method
* added getBooksById method

-->

<?php
class Bookstore_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->database();
	}
	
	//connect to database - get all books
	public function get_all_books() {
		$this->db->select('*');
		$this->db->from('books');
		$this->db->join('author', 'author.id = books.author_id');
		$this->db->join('genre', 'genre.id = books.genre_id');
		
		$query = $this->db->get();
		$data['Books'] = $query->result();
		
		echo json_encode($data);
	}
	
	//connect to database - get a book record by id
    public function get_book_by_id($id){ 

	    $this->db->select('*');
	    $this->db->from('books');
		$this->db->join('author', 'author.id = books.author_id');
		$this->db->join('genre', 'genre.id = books.genre_id');
	    $this->db->where('book_id', $id);

	    $query = $this->db->get();
		$data['Book'] = $query->result();
		
		echo json_encode($data);
    }
}
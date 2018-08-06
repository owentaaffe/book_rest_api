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

-->

<?php
class Bookstore_model extends CI_Model {

	public function __construct()
	{
		parent::__construct();
		
		$this->load->database();
	}
	
	//api call - get all books
	public function get_all_books() {
		
	}
	
	//API call - get a book record by id
    public function get_book_by_id(){ 
		
   }
}
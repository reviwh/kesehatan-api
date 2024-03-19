<?php

final class NewsModel
{
    private $table = 'news';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    public function getAllNews()
    {
        $this->db->query("SELECT * FROM  {$this->table} ORDER BY date DESC");
        return $this->db->resultSet();
    }

    public function getNewsById($id)
    {
        $this->db->query("SELECT * FROM {$this->table} WHERE news_id=:id");
        $this->db->bind('id', $id);
        return $this->db->single();
    }
    public function searchNews()
    {
        $q = $_POST['q'];
        $this->db->query("SELECT * FROM {$this->table} WHERE title LIKE :q ORDER BY date DESC");
        $this->db->bind('q', "%$q%");
        return $this->db->resultSet();
    }
}

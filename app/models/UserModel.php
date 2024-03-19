<?php

final class UserModel
{
    private $table = 'users';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    /**
     * Check if a user exists in the database.
     *
     * @param array $data Associative array containing username and password
     * @return array Information about the user
     */
    public function login($data)
    {
        $response = array();
        $stored_password = $this->getPassword($data['username']);
        if (password_verify($data['password'], $stored_password['password'])) {
            $response["success"] = true;
            $response["message"] = "Login success";
        } else {
            $response["success"] = false;
            $response["message"] = "Login failed";
        }
        return $response;
    }

    /**
     * Insert a new user into the database.
     *
     * @param array $data Associative array containing username, password, name, and email
     * @return int Number of rows affected by the insert query
     */
    public function register($data){
        $this->db->query("INSERT INTO {$this->table} VALUES (:username, :password, :name, :email)");
        $this->db->bind('username', $data['username']);
        $this->db->bind('password', password_hash($data['password'], PASSWORD_BCRYPT));
        $this->db->bind('name', $data['name']);
        $this->db->bind('email', $data['email']);
        $this->db->execute();
        return $this->db->rowCount();
    }

    /**
     * Retrieves a user from the database based on the provided username.
     *
     * @param string $username The username of the user to retrieve.
     * @return mixed The user data if found, otherwise null.
     */
    public function getUser($username){
        $this->db->query("SELECT username, name, email FROM {$this->table} WHERE username=:username");
        $this->db->bind('username', $username);
        return $this->db->single();
    }

    /**
     * Change the password for a user in the database.
     *
     * @return int Number of rows affected by the update query
     */
    public function changePassword(){
        $old = $this->getPassword($_POST['username']);
        
        if(!password_verify($_POST['old'], $old['password'])){
            return 0;
        }
        
        $this->db->query("UPDATE {$this->table} SET password = :password WHERE username = :username");
        $this->db->bind('username', $_POST['username']);
        $this->db->bind('password', password_hash($_POST['password'], PASSWORD_BCRYPT));
        $this->db->execute();
        return $this->db->rowCount();
    }

    /**
     * Update a user in the database with the provided data.
     *
     * @param array $data Associative array containing username, name, and email
     * @return int Number of rows affected by the update query
     */
    public function updateUser($data){
        $old = $this->getPassword($_POST['username']);
        
        if(!password_verify($_POST['password'], $old['password'])){
            return 0;
        }

        $this->db->query("UPDATE {$this->table} SET email = :email, name = :name WHERE username = :username");
        $this->db->bind('username', $data['username']);
        $this->db->bind('name', $data['name']);
        $this->db->bind('email', $data['email']);
        $this->db->execute();
        return $this->db->rowCount();
    }

    /**
     * Retrieves the password for a given username from the database.
     *
     * @param string $username The username to retrieve the password for.
     * @return mixed The password associated with the username.
     */
    private function getPassword($username){
        $this->db->query("SELECT password FROM {$this->table} WHERE username=:username");
        $this->db->bind('username', $username);
        return $this->db->single();
    }
}

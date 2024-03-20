<?php

final class EmployeeModel
{
    private $table = 'employees';
    private $db;

    public function __construct()
    {
        $this->db = new Database;
    }

    /**
     * Retrieves all employees from the database.
     *
     * @return array The result set containing all employees.
     */
    public function getAllEmployees()
    {
        $this->db->query("SELECT * FROM {$this->table} ORDER BY name ASC");
        return $this->db->resultSet();
    }

    /**
     * Retrieves employees by their employee number.
     *
     * @param string $no_bp The employee number
     * @return array Associative array containing employee data
     */
    public function getEmployeesByNoBp($no_bp)
    {
        $this->db->query("SELECT * FROM {$this->table} WHERE no_bp=:no_bp");
        $this->db->bind('no_bp', $no_bp);
        return $this->db->single();
    }

    /**
     * Inserts an employee into the database table.
     *
     * @param array $data An associative array containing the employee's data.
     *                    The array should have the following keys:
     *                    - name: string, the employee's name.
     *                    - no_bp: string, the employee's identification number.
     *                    - no_hp: string, the employee's phone number.
     *                    - email: string, the employee's email address.
     * @return int The number of rows affected by the insertion.
     */
    public function insertEmployee($data)
    {
        $query = "INSERT INTO {$this->table} VALUES (:name, :no_bp, :no_hp, :email, CURRENT_TIMESTAMP)";
        $this->db->query($query);
        $this->db->bind('name', $data['name']);
        $this->db->bind('no_bp', $data['no_bp']);
        $this->db->bind('no_hp', $data['no_hp']);
        $this->db->bind('email', $data['email']);
        $this->db->execute();
        return $this->db->rowCount();
    }
    /**
     * Updates an employee's information in the database.
     *
     * @param array $data An associative array containing the employee's data to be updated.
     *                    The array should have the following keys:
     *                    - name: string, the employee's name.
     *                    - no_bp: string, the employee's identification number.
     *                    - no_hp: string, the employee's phone number.
     *                    - email: string, the employee's email address.
     * @return int The number of rows affected by the update query.
     */
    public function updateEmployee($data)
    {
        $query = "UPDATE {$this->table} SET name = :name, no_hp = :no_hp, email = :email WHERE no_bp = :no_bp";
        $this->db->query($query);
        $this->db->bind('name', $data['name']);
        $this->db->bind('no_bp', $data['no_bp']);
        $this->db->bind('no_hp', $data['no_hp']);
        $this->db->bind('email', $data['email']);
        $this->db->execute();
        return $this->db->rowCount();
    }

    /**
     * Delete an employee from the database by their unique identifier.
     *
     * @param string $no_bp The unique identifier of the employee to be deleted.
     * @return int Number of rows affected by the delete query.
     */
    public function deleteEmployee($no_bp)
    {
        $query = "DELETE FROM employees WHERE no_bp=:no_bp";
        $this->db->query($query);
        $this->db->bind('no_bp', $no_bp);
        $this->db->execute();
        return $this->db->rowCount();
    }

    /**
     * Searches for employees based on a given query.
     *
     * @return array the result set of the search
     */
    public function searchEmployees(){
        $q = $_POST['q'];
        $query = "SELECT * FROM employees WHERE name LIKE :q ORDER BY name ASC";
        $this->db->query($query);
        $this->db->bind('q', "%$q%");
        return $this->db->resultSet();
    }

}

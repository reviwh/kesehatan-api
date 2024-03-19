<?php

class Employee extends Controller
{
    /**
     * Get all employees.
     *
     * @return void
     */
    public function index()
    {
        $model = $this->model('EmployeeModel');
        $data = $model->getAllEmployees();
        echo json_encode($data);
    }

    /**
     * Retrieve details of an employee by their employee number.
     *
     * @param int $no_bp Employee number
     * @return void
     */
    public function detail($no_bp)
    {
        $model = $this->model('EmployeeModel');
        $data = $model->getEmployeesByNoBp($no_bp);
        echo json_encode($data);
    }

    /**
     * Insert an employee.
     *
     * @return void
     */
    public function insert()
    {
        if ($this->model('EmployeeModel')->insertEmployee($_POST) > 0) {
            $response["success"] = true;
            $response["message"] = "Employee inserted successfully";
        } else {
            $response["success"] = false;
            $response["message"] = "Employee failed to insert";
        }
        echo json_encode($response);
    }

    /**
     * Update an employee.
     *
     * @return void
     */
    public function update()
    {
        if ($this->model('EmployeeModel')->updateEmployee($_POST) > 0) {
            $response["success"] = true;
            $response["message"] = "Employee updated successfully";
        } else {
            $response["success"] = false;
            $response["message"] = "Employee failed to update";
        }
        echo json_encode($response);
    }

    /**
     * Delete an employee by their employee number.
     *
     * @param int $no_bp The employee number
     * @return void
     */
    public function delete($no_bp)
    {
        if ($this->model('EmployeeModel')->deleteEmployee($no_bp) > 0) {
            $response["success"] = true;
            $response["message"] = "Employee deleted successfully";
        } else {
            $response["success"] = false;
            $response["message"] = "Employee failed to delete";
        }
        echo json_encode($response);
    }

    /**
     * Searches for employees and returns the results as a JSON-encoded string.
     *
     * @return void
     */
    public function search()
    {
        $model = $this->model('EmployeeModel');
        $data = $model->searchEmployees();
        echo json_encode($data);
    }
}

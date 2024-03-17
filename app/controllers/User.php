<?php
class User extends Controller
{
    /**
     * Logs in the user.
     *
     * @return void
     */
    public function login()
    {
        $response = $this->model('UserModel')->login($_POST);
        echo json_encode($response);
    }

    /**
     * Register the user.
     *
     * @return void
     */
    public function register()
    {
        if ($this->model('UserModel')->register($_POST) > 0) {
            $response["success"] = true;
            $response["message"] = "User registered successfully";
        } else {
            $response["success"] = false;
            $response["message"] = "User failed to register";
        }
        echo json_encode($response);
    }

    /**
     * Get user by username.
     *
     * @param string $username The username of the user.
     * @return void
     */
    public function index($username){
        $data = $this->model('UserModel')->getUser($username);
        echo json_encode($data);
    }

    /**
     * Change the password for a user in the database.
     *
     * @return void
     */
    public function updatePassword(){
        if ($this->model('UserModel')->changePassword($_POST) > 0) {
            $response["success"] = true;
            $response["message"] = "Password changed successfully";
        } else {
            $response["success"] = false;
            $response["message"] = "Password failed to change";
        }
        echo json_encode($response);
    }

    /**
     * Update user in the database with the provided data.
     *
     * @return void
     */
    public function update(){
        if ($this->model('UserModel')->updateUser($_POST) > 0) {
            $response["success"] = true;
            $response["message"] = "User updated successfully";
        } else {
            $response["success"] = false;
            $response["message"] = "User failed to update";
        }
        echo json_encode($response);
    }


}
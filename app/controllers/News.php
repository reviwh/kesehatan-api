<?php

class News extends Controller
{
    /**
     * Get list of news from database.
     *
     * @return void
     */
    public function index()
    {
        $model = $this->model('NewsModel');
        $data = $model->getAllNews();
        echo json_encode($data);
    }

    /**
     * Get detail of news from database.
     *
     * @param int $id ID of news
     * @return void
     */
    public function detail($id)
    {
        $model = $this->model('NewsModel');
        $data = $model->getNewsById($id);
        echo json_encode($data);
    }

    /**
     * Search news from database.
     *
     * @return void
     */
    public function search()
    {
        $model = $this->model('NewsModel');
        $data = $model->searchNews();
        echo json_encode($data);
    }
}

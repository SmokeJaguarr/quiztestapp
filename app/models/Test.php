<?php
class Test
{
    private $db;

    public function __construct()
    {
        $this->db = new Database;

    }

    public function getTests()
    {
        $this->db->query('SELECT * FROM test');

        $results = $this->db->resultSet();

        return $results;
    }

    public function getQuestions($id)
    {
        $this->db->query('SELECT * FROM question WHERE test_id = :id');

        // Bind value
        $this->db->bind(':id', $id);

        $results = $this->db->resultSet();

        return $results;
    }

    public function getOptions($id)
    {
        $this->db->query('SELECT * FROM options WHERE question_id = :id');

        // Bind value
        $this->db->bind(':id', $id);

        $results = $this->db->resultSet();

        return $results;
    }

    public function getOptionAnswer($id)
    {
        $this->db->query('SELECT answer_bool FROM options WHERE id = :id');

        // Bind value
        $this->db->bind(':id', $id);

        $results = $this->db->single();

        return $results;
    }

    public function addAnswer($data)
    {
        $this->db->query('INSERT INTO answer (user_id, test_id, question_id, option_id, correct, session_id)
                                VALUES(:user_id, :test_id, :question_id, :option_id, :correct, :session_id)');
        // Bind values
        $this->db->bind(':user_id', $data['user_id']);
        $this->db->bind(':test_id', $data['test_id']);
        $this->db->bind(':question_id', $data['question_id']);
        $this->db->bind(':option_id', $data['option_id']);
        $this->db->bind(':correct', $data['correct']);
        $this->db->bind(':session_id', $data['session_id']);

        // Execute
        if ($this->db->execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function saveTestResults($data)
    {
        $this->db->query('INSERT INTO finished_test (test_id, user_id, correct_answers, session_id)
                                VALUES(:test_id, :user_id, :correct_answers, :session_id)');
        // Bind values
        $this->db->bind(':test_id', $data['test_id']);
        $this->db->bind(':user_id', $data['user_id']);
        $this->db->bind(':correct_answers', $data['correct_answers']);
        $this->db->bind(':session_id', $data['session_id']);

        // Execute
        if ($this->db->execute()) {
            return true;
        } else {
            return false;
        }
    }

    public function getCorrectAnswerSum($data)
    {
        $this->db->query('SELECT SUM(correct) as correct_sum FROM answer WHERE user_id = :user_id AND session_id = :session_id');

        // Bind value
        $this->db->bind(':user_id', $data['user_id']);
        $this->db->bind(':session_id', $data['session_id']);

        $results = $this->db->single()->correct_sum;

        return $results;

    }
}

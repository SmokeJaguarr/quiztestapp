<?php
class Tests extends Controller
{
    public function __construct()
    {
        // Lodad tests Database Model
        $this->testsModel = $this->model('Test');

        if (!isLoggedIn()) {
            redirect('users/login');
        }

    }

    /*
     * index() function is responsible
     * for showing all available tests
     */

    public function index()
    {
        $tests = $this->testsModel->getTests();

        $data = [
            'tests' => $tests,
            'test_err' => '',
            'name' => $_SESSION['user_name'],
        ];

        $this->view('tests/index', $data);
    }

    /* 
     * test() function starts Test
     * and is responsible for
     * showing questions and 
     * answers and keeping track
     * if test have been finished
     */
    public function test()
    {

        // Check if question count is set up at sessions
        if (!isset($_SESSION['test_question_count'])) {
            $_SESSION['test_question_count'] = 0;
        }

        // First question
        if ($_SESSION['test_question_count'] == 0) {
            if ($_SERVER['REQUEST_METHOD'] == 'POST') {

                $tests = $this->testsModel->getTests();
                $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
                $test_id = trim($_POST['test']);

                // First validate if selected Test is valid input
                if ($test_id == '') {
                    $data = [
                        'tests' => $tests,
                        'test_err' => 'Please select test',
                        'name' => $_SESSION['user_id'],
                    ];
                    $this->view('tests/index', $data);

                } else {

                    // Get all current test Questions from Database
                    $questions = $this->testsModel->getQuestions(trim($_POST['test']));

                    // Get current question options from database
                    $options = $this->testsModel->getOptions($questions[0]->id);

                    // Save all current test Question to session and crete session variable neccessery for test
                    saveQuestionsToSession($questions);
                    
                    $data = [
                        'question' => $questions[0],
                        'options' => $options,
                        'select_err' => '',
                        'progress_bar' => ($_SESSION['test_question_count'] + 1) / $_SESSION['question_count'],
                    ];

                    // Save at session which question we are
                    $this->view('tests/test', $data);
                }
            } else {
                redirect('');
            }
        } elseif ($_SESSION['test_question_count'] < $_SESSION['question_count']) {
            print_r("Im at elseif");
            // Get question from session
            $question = getQuestions()[$_SESSION['test_question_count']];
            // Get question options from DataBase
            $options = $this->testsModel->getOptions($question->id);

            $data = [
                'question' => $question,
                'options' => $options,
                'select_err' => '',
                'progress_bar' => ($_SESSION['test_question_count']) / $_SESSION['question_count'] * 100,
            ];
            $this->view('tests/test', $data);
        } elseif ($_SESSION['test_question_count'] == $_SESSION['question_count']) {

            $data = [
                'test_id' => $_SESSION['test_id'],
                'user_id' => $_SESSION['user_id'],
                'session_id' => $_SESSION['sessionIdForTest'],
                'total_questions' => $_SESSION['question_count'],
                'progress_bar' => ($_SESSION['test_question_count']) / $_SESSION['question_count'] * 100,
            ];

            $data['correct_answers'] = $this->testsModel->getCorrectAnswerSum($data);

            $this->testsModel->saveTestResults($data);

            // Unsetin all sessions related to Test
            unsetTestRelatedSessions();
            $this->view('tests/finish', $data);
        } else {
            redirect('');
        }

    }

    /* 
     * answe() function is responsible
     * for checking if valid answer 
     * have been given and if its 
     * valid save ansver to DB.
     * Then redirect to test() function
     */
    public function answer()
    {
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
            if (!isset($_POST['result'])) {
                $question = getQuestions()[$_SESSION['test_question_count']];
                // Get question options from DataBase
                $options = $this->testsModel->getOptions($question->id);

                $data = [
                    'question' => $question,
                    'options' => $options,
                    'select_err' => 'Please select one answer',
                    'progress_bar' => ($_SESSION['test_question_count']) / $_SESSION['question_count'] * 100,
                ];

                // Save at session which question we are
                $this->view('tests/test', $data);

            } else {
                $_POST = filter_input_array(INPUT_POST, FILTER_SANITIZE_STRING);
                $option_id = trim($_POST['result']);
                $data = [
                    'user_id' => $_SESSION['user_id'],
                    'test_id' => $_SESSION['test_id'],
                    'question_id' => getQuestions()[$_SESSION['test_question_count']]->id,
                    'option_id' => $option_id,
                    'attemp_count' => 1,
                    'correct' => $this->testsModel->getOptionAnswer($option_id)->answer_bool,
                    'session_id' => $_SESSION['sessionIdForTest'],
                ];
                $this->testsModel->addAnswer($data);

                $_SESSION['test_question_count']++;

                redirect('tests/test');
            }

        }

    }

}

<?php
session_start();

// Flash message helper
// EXAMPLE - flash('register_');
function flash($name = '', $message = '', $class = 'alert alert-success')
{
    if (!empty($name)) {
        if (!empty($message) && empty($_SESSION[$name])) {
            if (!empty($_SESSION[$name])) {
                unset($_SESSION[$name]);
            }
            if (!empty($_SESSION[$name . '_class'])) {
                unset($_SESSION[$name . '_class']);
            }
            $_SESSION[$name] = $message;
            $_SESSION[$name . '_class'] = $class;
        } elseif (empty($message) && !empty($_SESSION[$name])) {
            $class = !empty($_SESSION[$name . '_class']) ? $_SESSION[$name . '_class'] : '';
            echo '<div class="' . $class . '" id="msg-flash">' . $_SESSION[$name] . '</div>';
            unset($_SESSION[$name]);
            unset($_SESSION[$name . '_class']);
        }
    }
}

function isLoggedIn()
{
    if (isset($_SESSION['user_id'])) {
        return true;
    } else {
        return false;
    }
}

function saveQuestionsToSession($object)
{
    // Store and sanitize all questions in session
    $_SESSION['questions'] = serialize($object);
    // Store test id in session
    $_SESSION['test_id'] = $object[0]->test_id;
    // Track how many questions have been answered
    $_SESSION['test_question_count'] = 0;
    $_SESSION['question_count'] = count($object);
    $_SESSION['sessionIdForTest'] = uniqid();
}

function unsetTestRelatedSessions()
{
    unset($_SESSION['questions']);
    unset($_SESSION['test_id']);
    unset($_SESSION['test_question_count']);
    unset($_SESSION['question_count']);
    unset($_SESSION['sessionIdForTest']);

}

function getQuestions()
{
    return unserialize($_SESSION['questions']);
}

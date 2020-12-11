<?php require APPROOT . '/views/inc/header.php';?>
<div class="jumbatron jumbatron-flud text-center">
    <div class="container">
        <h1>Test is finished!!!</h1>
        <p>Correct answers <?php echo $data['correct_answers']; ?>/<?php echo $data['total_questions']; ?> </p>
        <p>Version: <?php echo APPVERSION; ?></p>
    </div>
</div>

<?php require APPROOT . '/views/inc/footer.php';?>
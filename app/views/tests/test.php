<?php require APPROOT . '/views/inc/header.php';?>
    <div class="jumbatron jumbatron-flud text-center">
        <div class="container">
            <h1 class="display-3"></h1>
            <h1 class="display-3"><?php echo $data['question']->question_text ?></h1>
            <form action="<?php echo URLROOT; ?>/tests/answer" method="post">
            <div class="row">
            <div class="btn-group" data-toggle="buttons">

                <div class="row">
                <?php foreach ($data['options'] as $option): ?>
                    <div class="col-md-5 m-3">
                            <button type="button" class="btn btn-block btn-primary">
                                    <ul>
                                    <input type="radio" name="result" value="<?php echo $option->id ?>" class="btn-block btn-primary active">
                                            <?php echo $option->option_text ?>
                                    </input>
                                    </ul>
                </button>
                    </div>
                <?php endforeach;?>
                </div>

                
            </div>
            </div>
            <div class="row">
                <div class="col">
                    <input type="submit" value="Nākamais" class="btn btn-success btn-sm">
                <span><?php echo $data['select_err']; ?></span>
                </div>
            </div>
            </form>
        </div>
    </div>
    <div class="progress">
        <div class="progress-bar progress-bar-striped" role="progressbar" style="width: <?php echo $data['progress_bar'] ?>%"></div>
    </div>

<?php require APPROOT . '/views/inc/footer.php';?>
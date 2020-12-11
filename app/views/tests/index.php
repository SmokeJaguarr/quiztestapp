<?php require APPROOT . '/views/inc/header.php';?>
    <div class="jumbatron jumbatron-flud text-center">
        <div class="container">
            <h1 class="display-3">Test you skills <?php echo $data['name']; ?></h1>

            <form action="<?php echo URLROOT; ?>/tests/test" method="post">

                <select name="test">

                <?php foreach ($data['tests'] as $test): ?>

                    <option value="<?php echo $test->id; ?>" selected><?php echo $test->test_name; ?></option>

                <?php endforeach;?>
                    <option value="" selected>Izvēlies testu</option>
                </select>
                <span><?php echo $data['test_err']; ?></span>

                <div class="row">
                    <div class="col">
                        <input type="submit" value="Start" class="btn btn-success btn-sm">
                        
                    </div>
                </div>

            </form>
        </div>
    </div>
<?php require APPROOT . '/views/inc/footer.php';?>
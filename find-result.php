<?php
session_start();
//error_reporting(0);
include('includes/config.php'); ?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Find Result</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" media="screen">
    <link rel="stylesheet" href="css/font-awesome.min.css" media="screen">
    <link rel="stylesheet" href="css/animate-css/animate.min.css" media="screen">
    <link rel="stylesheet" href="css/icheck/skins/flat/blue.css">
    <link rel="stylesheet" href="css/main.css" media="screen">
    <link rel="icon" href="logo.jpg" />
    <script src="js/modernizr/modernizr.min.js"></script>
</head>
<style>
    body {
        background-image: url('images/student-result-background.jpg');
        background-size: cover;
        background-repeat: no-repeat;
    }

    .custom-login {
        box-shadow: 10px 10px 37px 0px rgba(0, 0, 0, 0.75) !important;
        -webkit-box-shadow: 10px 10px 37px 0px rgba(0, 0, 0, 0.75) !important;
        -moz-box-shadow: 10px 10px 37px 0px rgba(0, 0, 0, 0.75) !important;
        border-radius: 57px 25px 53px 25px !important;
        -webkit-border-radius: 57px 25px 53px 25px !important;
        -moz-border-radius: 57px 25px 53px 25px !important;
        backdrop-filter: blur(13px) saturate(180%) !important;
        -webkit-backdrop-filter: blur(13px) saturate(180%) !important;
        background-color: rgba(255, 255, 255, 0.75) !important;
        border: 1px solid rgba(209, 213, 219, 0.3) !important;
    }
</style>

<body>
    <div class="main-wrapper">

        <div class="login-bg-color">
            <div class="row">
                <div class="col-md-4 col-md-offset-4">
                    <div class="panel login-box custom-login">
                        <div class="panel-heading">
                            <div class="panel-title text-center">
                                <h3>Generate Result</h3>
                            </div>
                        </div>
                        <div class="panel-body p-20">



                            <form action="result.php" method="post">
                                <div class="form-group">
                                    <label for="rollid">Enter Roll Number</label>
                                    <input type="text" class="form-control" id="rollid" placeholder="Enter Your Roll Id"
                                        autocomplete="off" name="rollid">
                                </div>
                                <div class="form-group">
                                    <label for="default" class="col-sm-2 control-label">Class</label>
                                    <select name="class" class="form-control" id="default" required="required">
                                        <option value="">Select Class</option>
                                        <?php $sql = "SELECT * from tblclasses";
                                        $query = $dbh->prepare($sql);
                                        $query->execute();
                                        $results = $query->fetchAll(PDO::FETCH_OBJ);
                                        if ($query->rowCount() > 0) {
                                            foreach ($results as $result) { ?>
                                                <option value="<?php echo htmlentities($result->id); ?>">
                                                    <?php echo htmlentities($result->ClassName); ?>&nbsp; Section-
                                                    <?php echo htmlentities($result->Section); ?>
                                                </option>
                                            <?php }
                                        } ?>
                                    </select>
                                </div>


                                <div class="form-group mt-20">
                                    <div class="">

                                        <button type="submit" class="btn btn-success btn-labeled pull-right">Search<span
                                                class="btn-label btn-label-right"><i
                                                    class="fa fa-check"></i></span></button>
                                        <div class="clearfix"></div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <a href="index.php">Back to Home</a>
                                </div>
                            </form>

                            <hr>

                        </div>
                    </div>
                    <!-- /.panel -->

                </div>
                <!-- /.col-md-6 col-md-offset-3 -->
            </div>
            <!-- /.row -->
        </div>
        <!-- /. -->

    </div>
    <!-- /.main-wrapper -->

    

    <!-- ========== COMMON JS FILES ========== -->
    <script src="js/jquery/jquery-2.2.4.min.js"></script>
    <script src="js/jquery-ui/jquery-ui.min.js"></script>
    <script src="js/bootstrap/bootstrap.min.js"></script>
    <script src="js/pace/pace.min.js"></script>
    <script src="js/lobipanel/lobipanel.min.js"></script>
    <script src="js/iscroll/iscroll.js"></script>

    <!-- ========== PAGE JS FILES ========== -->
    <script src="js/icheck/icheck.min.js"></script>

    <!-- ========== THEME JS ========== -->
    <script src="js/main.js"></script>
    <script>
        $(function () {
            $('input.flat-blue-style').iCheck({
                checkboxClass: 'icheckbox_flat-blue'
            });
        });
    </script>

    <!-- ========== ADD custom.js FILE BELOW WITH YOUR CHANGES ========== -->

    
</body>

</html>
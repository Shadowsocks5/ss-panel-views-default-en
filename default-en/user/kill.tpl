{include file='user/main.tpl'}

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Delete account
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-sm-12">
                <div id="msg-error" class="alert alert-warning alert-dismissable" style="display:none">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                    <h4><i class="icon fa fa-warning"></i>Error</h4>

                    <p id="msg-error-p"></p>
                </div>
            </div>
        </div>
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-body">
                        <div class="box-header">
                            <i class="fa fa-user"></i>

                            <h3 class="box-title">Enter the current password to verify the identity</h3>
                        </div>
                        <div id="msg-success" class="alert alert-info alert-dismissable" style="display:none">
                            <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                            <h4><i class="icon fa fa-info"></i> Ok!</h4>

                            <p id="msg-success-p"></p>
                        </div>
                        <div class="form-group">
                            <input type="password" class="form-control" placeholder="Current password (required)" id="passwd">
                        </div>
                    </div>
                    <!-- /.box-body -->
                    <div class="box-footer">
                        <button type="submit" id="kill" class="btn btn-danger">Delete Account</button>
                    </div>

                </div>
                <!-- /.box -->
            </div>
            <div class="col-md-6">
                <div class="callout callout-warning">
                    <h4>Notice</h4>

                    <p>Once your account is deleted, all of your data will be deleted.</p>

                    <p>If you want to re-use the services provided by this site, you need to re-register.</p>

                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->
</div><!-- /.content-wrapper -->

<script>
    $("#msg-success").hide();
    $("#msg-error").hide();
    $("#ss-msg-success").hide();
</script>

<script>
    $(document).ready(function () {
        $("#kill").click(function () {
            $.ajax({
                type: "POST",
                url: "kill",
                dataType: "json",
                data: {
                    passwd: $("#passwd").val(),
                },
                success: function (data) {
                    if (data.ret) {
                        $("#msg-error").hide();
                        $("#msg-success").show();
                        $("#msg-success-p").html(data.msg);
                        window.setTimeout("location.href='/'", 2000);
                    } else {
                        $("#msg-error").show();
                        $("#msg-error-p").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    alert("Error：" + jqXHR.status);
                }
            })
        })
    })
</script>

{include file='user/footer.tpl'}
{include file='user/main.tpl'}

<div class="content-wrapper">
    <section class="content-header">
        <h1>
            User Profile
        </h1>
    </section>
    <!-- Main content --><!-- Main content -->
    <section class="content">
        <div class="row">
            <!-- left column -->
            <div class="col-md-6">
                <!-- general form elements -->
                <div class="box box-primary">
                    <div class="box-header">
                        <i class="fa fa-user"></i>

                        <h3 class="box-title">Account</h3>
                    </div>
                    <div class="box-body">
                        <dl class="dl-horizontal">
                            <dt>Username</dt>
                            <dd>{$user->user_name}</dd>
                            <dt>E-Mail</dt>
                            <dd>{$user->email}</dd>
                        </dl>

                    </div>
                    <div class="box-footer">
                        <a class="btn btn-danger btn-sm" href="kill">Delete account</a>
                    </div>
                    <!-- /.box -->
                </div>
            </div>
        </div>
    </section>
    <!-- /.content -->
</div><!-- /.content-wrapper -->
{include file='user/footer.tpl'}
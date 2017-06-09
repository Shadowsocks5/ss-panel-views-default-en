{include file='user/main.tpl'}

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Invite
        </h1>
    </section>

    <!-- Main content --><!-- Main content -->
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
                    <div class="box-header">
                        <i class="fa fa-rocket"></i>

                        <h3 class="box-title">Invite</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <p>Currently you can generate <code>{$user->invite_num}</code> invitation codes.</p>
                        {if $user->invite_num }
                        <div class="input-group">
                            <input class="form-control" id="num" type="number" placeholder="Generate quantity">
                            <div class="input-group-btn">
                                <button id="invite" class="btn btn-info">Generate invitation code</button>
                            </div>
                        </div>
                        {/if}
                    </div>
                    <!-- /.box -->
                    <div class="box-header">
                        <h3 class="box-title">Invitation code</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>Invitation code</th>
                                <th>Status</th>
                            </tr>
                            </thead>
                            <tbody>
                            {foreach $codes as $code}
                                <tr>
                                    <td><b>{$code->id}</b></td>
                                    <td><a href="/auth/register?code={$code->code}" target="_blank">{$code->code}</a>
                                    </td>
                                    <td>Available</td>
                                </tr>
                            {/foreach}
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-md-6">
                <div class="callout callout-warning">
                    <h4>Notice</h4>

                    <p>Invitation code please give the person who needs to know.</p>

                    <p>Invite a record, if the person you are invited to violate the user agreement, you will have joint and several liability.</p>
                </div>

                <div class="callout callout-info">
                    <h4>Description</h4>

                    <p>After the user registers for 48 hours, the invitation code can be generated.</p>

                    <p>Invitation code is temporarily unavailable.</p>

                    <p>Public pages are sent from time to time to invite invitations, if the invitations can be used to pay attention to public invitations.</p>
                </div>
            </div>
            <!-- /.col (right) -->
        </div>
    </section>
    <!-- /.content -->
</div><!-- /.content-wrapper -->

<script>
    $(document).ready(function () {
        $("#invite").click(function () {
            $.ajax({
                type: "POST",
                url: "/user/invite",
                dataType: "json",
                data: {
                    num: $("#num").val()
                },
                success: function (data) {
                    window.location.reload();
                },
                error: function (jqXHR) {
                    alert("Error：" + jqXHR.status);
                }
            })
        })
    })
</script>

{include file='user/footer.tpl'}
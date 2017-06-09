<footer class="page-footer orange">
	<div class="container">
		<div class="row">
			<div class="col l6 s12">
				<h5 class="white-text">About</h5>
				<p class="grey-text text-lighten-4">ShadowsocksR is used for scientific Internet access.</p>


			</div>
			<div class="col l3 s12">
				<h5 class="white-text">Users</h5>
				<ul>
				{if $user->isLogin}
					<li><a class="white-text" href="/user">User Center</a></li>
					<li><a class="white-text" href="/user/logout">Exit</a></li>
				{else}
					<li><a class="white-text" href="/auth/login">Login</a></li>
					<li><a class="white-text" href="/auth/register">注册</a></li>
				{/if}
				</ul>
			</div>
			<div class="col l3 s12">
				<h5 class="white-text">Registered</h5>
				<ul>
					<li><a class="white-text" href="/code">Invitation Code</a></li>
					<li><a class="white-text" href="/tos">TOS</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="footer-copyright">
		<div class="container">
			&copy; {$config["appName"]}  Design by <a class="orange-text text-lighten-3" href="https://github.com/shadowsocks5">Shadowsocs5</a>
		</div>
		<div style="display:none;">
			{$analyticsCode}
		</div>
	</div>
</footer>


<!--  Scripts-->
<script src="/assets/public/js/jquery.min.js"></script>
<script src="/assets/materialize/js/materialize.min.js"></script>
<script src="/assets/materialize/js/init.js"></script>

</body>
</html>

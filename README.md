<html>
	<head>
		<title></title>
	</head>
	<body>
		<h1 style="font-size: 2.5em; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; line-height: 1.7; padding: 0px; cursor: text; position: relative; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(221, 221, 221); color: rgb(51, 51, 51); font-family: Helvetica, arial, freesans, clean, sans-serif; margin-top: 0px !important;">
			CRDValidation</h1>
		<p>
			&nbsp;</p>
		<p>
			This is a text validation library for Objective - C.</p>
		<p>
			All most every business application need text based input validation. Most og the validation are common between appication like E-Mail. We generaly copy and paste code from internet or from our own old project.</p>
		<p>
			But I think a library can make it easy to work. So I create one and share here.</p>
		<p>
			This Library can work in two way.</p>
		<ul>
			<li>
				Manualy with code (Custome)</li>
			<li>
				As a category of UITextField.</li>
		</ul>
		<p>
			If you want to perform siple validation for UITextField only than go for second approch but if you want some custom validation or you want validation of text which is somewhere else than UITextField lin NSString or UILabel than go for first approch. If you want validation for NSDate than also you can apply first Approch.</p>
		<p>
			I have created a simple demo to show how to use UITextField category.</p>
		<p>
			<img alt="" src="https://raw.github.com/Chintan-Dave/CRDValidation/master/CRDValidation%20Example/All%20Valid.png" style="height: 480px; width: 320px;" />&nbsp; &nbsp;<img alt="" src="https://raw.github.com/Chintan-Dave/CRDValidation/master/CRDValidation%20Example/All%20Invalid.png" style="width: 320px; height: 480px;" /></p>
		<h2>
			This Library Support Following Validation:</h2>
		<h3>
			UITextField Validation:</h3>
		<ol>
			<li>
				Blank</li>
			<li>
				Email</li>
			<li>
				Number</li>
			<li>
				Integer</li>
			<li>
				Alphabet without space</li>
			<li>
				Alphabet with space</li>
			<li>
				Alpha numeric without space</li>
			<li>
				Alpha numeric with space</li>
			<li>
				Regular Expression</li>
		</ol>
		<h3>
			Additional Custom validation:</h3>
		<ul>
			<li>
				Min and max length validation</li>
			<li>
				Validation on date
				<ul>
					<li>
						Date before other date</li>
					<li>
						Date after other date</li>
					<li>
						date between two date</li>
				</ul>
			</li>
		</ul>
		<h2>
			<u><em><strong>How to use it:</strong></em></u></h2>
		<p>
			Add This four file in your project if you want UITextField. otherwise just add first two file.</p>
		<ol>
			<li>
				<a class="js-directory-link" href="https://github.com/Chintan-Dave/CRDValidation/blob/master/CRDValidation%20Example/CRDValidation%20Example/CRDValidation/CRDValidation.h" id="cc267a24501caf5135c1c91a64a00d99-f2d6dda8c09b6b47b2261d06ab6657716d056a3d" style="color: rgb(65, 131, 196); outline: 0px; font-family: Helvetica, arial, freesans, clean, sans-serif; font-size: 13.142857551574707px; line-height: 10.285714149475098px; white-space: nowrap; background-color: rgb(248, 248, 248);" title="CRDValidation.h">CRDValidation.h</a></li>
			<li>
				<a class="js-directory-link" href="https://github.com/Chintan-Dave/CRDValidation/blob/master/CRDValidation%20Example/CRDValidation%20Example/CRDValidation/CRDValidation.m" id="ae5abe6bdb03f0bd092b4f1fa478455a-3e0d3a8aee80c6970ab3c8e0f585803ed65ffa76" style="color: rgb(65, 131, 196); text-decoration: none; font-family: Helvetica, arial, freesans, clean, sans-serif; font-size: 13.142857551574707px; line-height: 10.285714149475098px; white-space: nowrap; background-color: rgb(248, 248, 248);" title="CRDValidation.m">CRDValidation.m</a></li>
			<li>
				<a class="js-directory-link" href="https://github.com/Chintan-Dave/CRDValidation/blob/master/CRDValidation%20Example/CRDValidation%20Example/UITextField%2BCRDValidation.h" id="18621c500f6caf37518f92751d55ce18-38b0deedcf50bc091ea07582058b9c8f9e66be0f" style="color: rgb(65, 131, 196); text-decoration: none; font-family: Helvetica, arial, freesans, clean, sans-serif; font-size: 13.142857551574707px; line-height: 10.285714149475098px; white-space: nowrap; background-color: rgb(248, 248, 248);" title="UITextField+CRDValidation.h">UITextField+CRDValidation.h</a></li>
			<li>
				<a class="js-directory-link" href="https://github.com/Chintan-Dave/CRDValidation/blob/master/CRDValidation%20Example/CRDValidation%20Example/UITextField%2BCRDValidation.m" id="86a9909bfcf799a5f68f20b9fcf92839-c7c7ecd0dc1b97deac51a9bc1efd971ce6c762d7" style="color: rgb(65, 131, 196); text-decoration: none; font-family: Helvetica, arial, freesans, clean, sans-serif; font-size: 13.142857551574707px; line-height: 10.285714149475098px; white-space: nowrap; background-color: rgb(248, 248, 248);" title="UITextField+CRDValidation.m">UITextField+CRDValidation.m</a></li>
		</ol>
		<p>
			Import .h files as u require and start wirking.</p>
	</body>
</html>

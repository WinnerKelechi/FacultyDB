<!DOCTYPE html>
<html>

<head>
    <title>Create Record</title>
    <style>
        .login_div{
	/*box-shadow: 5px 5px 5px 5px gray;*/
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	margin: auto;
	text-align: center;
	width: 400px;
	height: auto;
	margin-top: 30px;
	/*background: url('img/form_bg.jpg'), linear-gradient: rgba (0,0,0,0.2);*/
	background: linear-gradient(-90deg,lavender,white);
	border-radius: 5px;
	transition: 0.9s ease 0.1s;
	border: 2px solid blue;
}
h3{padding-top: 20px; color: black; text-transform: uppercase;}
input{
	height: 50px;
	padding: 20px;
	font-size: 14px;
	font-family: tahoma;
	margin: auto;
	transition: ;
	width: 90%;
}
.report_msg{
	min-width: 200px;
	height: 20px;
	font-size: 14px;
	font-weight: bold;
	color: black;
	margin: auto;
	transition: ;
	font-family: tahoma;
}
#submit{
	background: lightblue;
	opacity: 0.5;
	border: 1px solid black;
	transition: 0.9s ease 0.1s;
}
input:hover{
	border: 1px solid black;
	transition: ;
}
#submit:hover{
	color: black;
	background: ;
	opacity: 0.9;
	width: ;
	box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
	transition: 0.9s ease 0.1s;
}
.delbtn{
	width: 100px;
}
		</style>
</head>

<body>

    <div class="login_div">
        <h3 style="font-family:tahoma;font-weight:bolder;">Register</h3>
        <p />
        <form action="admin_panel.php" method="post">
            <center>
                <input type="text" placeholder="Name" maxlength="30px" name="name" value="<?php echo $_POST['name'];?>" required />
                <p />
                <p />
                <input type="text" placeholder="Matric No." name="matric" value="<?php echo $_POST['matric'];?>" required />
                <p />
                <input type="text" placeholder="Department" name="dpt" value="<?php echo $_POST['dpt'];?>" required />
                <p />
                <input type="text" placeholder="Gender" name="gen" value="<?php echo $_POST['gen'];?>" required />
                <p />
                <input type="submit" value="Add" name="add" id="submit" />
                <p />
            </center>
        </form>
        <!--
			
				
				
				
			-->
    </div>
</body>

</html>

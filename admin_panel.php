<?php
	error_reporting(0);
	ini_set('display_errors', 0);
?>

<?php
	session_start();
	$adminpass = $_SESSION['admin_pass'];
	$adminname = $_SESSION['admin_name'];
	$adminid = $_SESSION['admin_id'];
	
	if ($adminpass == ""){ //make sure its a tracking number 
		header("location:admin.php");
	}

	$actionpass = $_GET['actionpass'];
	//ECHo $actionpass;
	if ($actionpass == "logout"){
		SESSION_START();
		$_SESSION['admin_pass'] = "";
		$_SESSION['admin_name'] = "";
		$_SESSION['admin_id'] = "";
		SESSION_DESTROY();
		echo "<script>window.location='admin.php';</script>";
	}
?>

<!--Delete Code-->
<?php
	$deluser = $_GET['user'];
	$del = $_GET['del'];
	
	if (isset($del)){
		require 'connect.php';
		$sql= "DELETE FROM student WHERE studentId = :user_id";
		$stmt = $conn->prepare($sql);
		$stmt->bindParam(':user_id',$del);
		if($stmt->execute()){
			$msg = "You have successfully deleted ".$deluser."'s data";
			echo "<script>alert('Successfully deleted');</script>";
		}
		else{
			$msg="Error Deleting!";
		}
		$conn=null;
	}
?>

<!--Update Code -->
<?php
	$update = $_GET['update'];
	$update_mat = $_POST['update_mat'];
	if (isset($_POST['up_submit'])){
		require "connect.php";
		try{
			$sql = "UPDATE student SET departmentName = :dpt, Name = :name, Gender = :gender WHERE matricNo= :update_mat";
			$stmt = $conn->prepare($sql);
			$stmt->bindParam(':dpt', $_POST['dpt']);
			$stmt->bindParam(':name', $_POST['name']);
			$stmt->bindParam(':gender', $_POST['gen']);
			$stmt->bindParam(':update_mat', $_POST['update_mat']);
			if($stmt->execute()){
				$msg = "Successfully Updated ".$_POST['name']."'s details.";
				echo "<script> alert('Successfully Updated!');  </script>";
			}
			else{
				$msg = "Error in updating, ".$_POST['name']." Please try again later.";
			}
		}
		catch(PDOEXCEPTION $e){
			echo "Error".$e->getMessage();
		}
		$conn=null;
	}
?>

<!--Create Record Code-->
<?php
	$dbid = $_GET['id'];
	if(isset($_POST["add"])){
		
		$id="";
		$name = $_POST['name'];
		$matric = $_POST['matric'];
		$dpt = $_POST['dpt'];
		$gender = $_POST['gen'];
		
		require "connect.php";
			try{
				$stmt=$conn->prepare("INSERT INTO student (studentId,matricNo,departmentName,Name,Gender) VALUES (:id, :mat, :dpt, :name, :gen)");
				$stmt->bindParam(':id', $id);
				$stmt->bindParam(':mat', $matric);
				$stmt->bindParam(':dpt', $dpt);
				$stmt->bindParam(':name', $name);
				$stmt->bindParam(':gen', $gender);
				
				if($stmt->execute()){
					$msg="<span style='color:green;'>Dear ".$name.", your data has been registered.</span>";
				}
				else{
					$msg="Failed to Send";
				}
			}

			catch (PDOEXCEPTION $e){
				echo "Error".$e->getMessage();
			}

			$conn=null;
	}
?>

<!DOCTYPE HTML>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>admin panel</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="vendor/perfect-scrollbar/perfect-scrollbar.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" type="text/css" href="css/util.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!--===============================================================================================-->

</head>

<body>
    <?php include 'header.php' ;?>

    <center>
        <div class="report_msg">
            <?php echo $msg ?>
        </div><br />
    </center>

    <div class="">
        <?php
			
				if (isset($_GET['update'])){
					include "update.php";
				}
				else{
					include "create.php";
				}
			?>
        <!-- Fetch (Read) Code -->
        <?php	
				require "connect.php";
				try{
					$sql = ("SELECT * FROM student ORDER by studentId ASC");
					$stmt = $conn->query($sql);
					$stmt->setFetchMode(PDO::FETCH_ASSOC);
				}
				catch (PDOException $e){
					die("Could not connect to the database $db :" . $e->getMessage());
				}
			?>
    </div>

    <center style="margin-top:50px;">
        <table cellpadding="" bgcolor="" `border="1">
            <h2>Student Records</h2>
            <thead>
                <tr>
                    <th class="column1">Id</th>
                    <th class="column2">Matric Num.</th>
                    <th class="column3">Department</th>
                    <th class="column4">Name</th>
                    <th class="column5">Gender</th>
                    <th class="column6"></th>
                </tr>
            </thead>

            <tbody>
                <!-- Condtion for fetching from database -->
                <?php
						while ($row = $stmt->fetch()){
					?>

                <tr>
                    <td class="column1">
                        <?php echo ($row['studentId']);?>
                    </td>
                    <td class="column2"><a href="admin_panel.php?id=<?php echo ($row['studentId']);?>?&&update=<?php echo ($row['matricNo']);?>">
                            <?php echo ($row['matricNo']);?></a></td>
                    <td class="column3">
                        <?php echo ($row['departmentName']);?>
                    </td>
                    <td class="column4">
                        <?php echo ($row['Name']);?>
                    </td>
                    <td class="column5">
                        <?php echo ($row['Gender']);?>
                    </td>
                    <td class="column6"><a href="admin_panel.php?del=<?php echo ($row['studentId']);?>?&&user=<?php echo ($row['Name']);?>">Delete</a></td>

                </tr>

                <?php
						}
					?>
            </tbody>
            <!-- Close Fetch Condition -->
        </table>
    </center>

    <?php include 'footer.php' ;?>
</body>

</html>

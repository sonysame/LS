<?php
	include "config.php";
	include "db.php";
	include("auth_session.php");
	if(isset($_POST['name']) && isset($_POST['template']) && in_array($_POST['template'], $TEMPLATES)) {
		$TEMPLATE = $_POST['template'];
		$name = $_POST['name'];
        $country = $_POST['country'];
        $passport = $_POST['passport'];
        $flightno = $_POST['flightno'];
        $bookingref = $_POST['bookingref'];
        $arrival = $_POST['arrival'];
		$username = $_SESSION["username"];

		$USERID = md5(time() . ":" . microtime());
		$create_datetime = date("Y-m-d H:i:s");

		$query = "INSERT into `pdf` (username, name, country, passport, flightno, bookingref, arrival, apphash, create_datetime) VALUES ('$username', '$name', '$country', '$passport', '$flightno', '$bookingref', '$arrival', '$USERID', '$create_datetime');";
		mysqli_query($con, $query);

		$CONTENT = "\\textbf{Context}"."\linebreak";
        $CONTENT .= "\\textbf{Name}:".$name."\linebreak";
        $CONTENT .= "\\textbf{Country}:".$country."\linebreak";
        $CONTENT .= "\\textbf{Passport No}:".$passport."\linebreak";
        $CONTENT .= "\\textbf{Flight No}:".$flightno."\linebreak";
        $CONTENT .= "\\textbf{Booking reference}:".$bookingref."\linebreak";
        $CONTENT .= "\\textbf{Date of Arrival}:".$arrival."\linebreak";
		$CONTENT .= "\\textbf{Application Hash}:".$USERID;


		$USERDIR = $COMPILEDIR . $USERID;

		$header = file_get_contents($TEMPLATEDIR . $TEMPLATE . "/header.tex");
		$footer = file_get_contents($TEMPLATEDIR . $TEMPLATE . "/footer.tex");

		$content = $header.$CONTENT.$footer;

		if(preg_match("(input|include)", $CONTENT)) {
			echo 'BLACKLISTED commands used';
		} else {
			file_put_contents($USERDIR . ".tex", $content);

			$CMD = "cd $COMPILEDIR && $PDFLATEX --shell-escape $USERID.tex";
			$output = shell_exec($CMD);

			if(file_exists($USERDIR . ".pdf")) {
				rename($USERDIR . ".pdf", $OUTPUTDIR . $USERID . ".pdf");
				echo "FILE CREATED: $USERID.pdf\n";
				echo "Download: $DLURL$USERID.pdf\n";
			}

			@unlink($USERDIR . ".tex");
			@unlink($USERDIR . ".log");
			@unlink($USERDIR . ".aux");


			echo "\n\nLOG:\n";
			echo $output;
			header("Location: $DLURL$USERID.pdf");
            		die();
		}
	} else {
		echo 'Error, wrong data';
	}
?>

<?php
$connect = mysqli_connect("localhost", "root", "", "hms");
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	$query = "
	SELECT * FROM doctors 
	WHERE doctorName LIKE '%".$search."%'
	OR specilization LIKE '%".$search."%' 
	OR holpitalName LIKE '%".$search."%' 
	";
}
else
{
	$query = "
	SELECT * FROM doctors ORDER BY id";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive">
					<table class="table table bordered">
						<tr>
							<th>Doctor Name</th>
							<th>Specilization</th>
							<th>Hospital Name</th>
							<th>Contact</th>
							<th>Email</th>
							<th>Fees</th>
						</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
			<tr>
				<td>'.$row["doctorName"].'</td>
				<td>'.$row["specilization"].'</td>
				<td>'.$row["holpitalName"].'</td>
				<td>'.$row["contactno"].'</td>
				<td>'.$row["docEmail"].'</td>
				<td>'.$row["docFees"].'</td>
			</tr>
		';
	}
	echo $output;
}
else
{
	echo 'Data Not Found';
}
?>
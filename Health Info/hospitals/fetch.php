<?php
$connect = mysqli_connect("localhost", "root", "", "hms");
$output = '';
if(isset($_POST["query"]))
{
	$search = mysqli_real_escape_string($connect, $_POST["query"]);
	$query = "
	SELECT * FROM hospital 
	WHERE Name LIKE '%".$search."%'
	OR Location LIKE '%".$search."%'  
	OR id LIKE '%".$search."%' 
	";
}
else
{
	$query = "
	SELECT * FROM hospital ORDER BY id";
}
$result = mysqli_query($connect, $query);
if(mysqli_num_rows($result) > 0)
{
	$output .= '<div class="table-responsive">
					<table class="table table bordered">
						<tr>
							<th>Hospital Name</th>
							<th>Location</th>
							<th>Contact</th>
							<th>Total Bed</th>
							<th>Exist Bed</th>
							<th>Exist Covid Bed</th>
							<th>Exist ICU</th>
						</tr>';
	while($row = mysqli_fetch_array($result))
	{
		$output .= '
			<tr>
				<td>'.$row["Name"].'</td>
				<td>'.$row["Location"].'</td>
				<td>'.$row["Contact"].'</td>
				<td>'.$row["total_bed"].'</td>
				<td>'.$row["exist_bed"].'</td>
				<td>'.$row["exist_covid_bed"].'</td>
				<td>'.$row["ICU_exist"].'</td>
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
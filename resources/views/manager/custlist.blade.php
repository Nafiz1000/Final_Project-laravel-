<!DOCTYPE html>
<html>
<head>
	<title>User list page</title>
</head>
<body>

	<h3>All Employees</h3>
	<a href="{{route('manager.index')}}">Back</a> |
	<a href="/empSearch">Search User</a> |
	<a href="/logout">logout</a>


	<br>
	<br>

	<table border="1">
		<tr>
			<td>ID</td>
			<td>USERNAME</td>
			<td>NAME</td>
			<td>CONTACT NUMBER</td>
			<td>FUNTIONS</td>
		</tr>

		@for($i=0; $i < count($employees); $i++)
		<tr>
			<td>{{$employees[$i]['id']}}</td>
			<td>{{$employees[$i]['username']}}</td>
			<td>{{$employees[$i]['name']}}</td>
			<td>{{$employees[$i]['contactno']}}</td>
			<td>
			<a href="{{route('manager.custDetails', $employees[$i]['id'])}}">Details</a> |
			<a href="{{route('manager.custEdit', $employees[$i]['id'])}}">Edit</a> |
			<a href="{{route('manager.empDestroyView', $employees[$i]['id'])}}">Delete</a> |
			 
 
			</td>
		</tr>
		@endfor
	</table>

</body>
</html>
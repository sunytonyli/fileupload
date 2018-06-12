<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>
<form action="">

	<input id="default_file" type="file" name="fileName"/>

</form>

<script type="text/javascript" src="resources/js/jquery-1.11.0.min.js"></script>
<script type="text/javascript">
	$('#default_file').change(function(){    
	    //on change event  
	    var formdata = new FormData();
	    if($(this).prop('files').length > 0)
	    {
	        file =$(this).prop('files')[0];
	        formdata.append("fileName", file);
	        formdata.append("name", "test");
	    }
	    
	    $.ajax({
		    url: "uploadFile",
		    type: "POST",
		    data: formdata,
		    processData: false, // 不处理数据
		    contentType: false, // 不设置内容类型
		    success: function (result) {
		         // if all is well
		         // play the audio file
		         alert(result);
		    }
		});
	});
	
</script>
</body>
</html>

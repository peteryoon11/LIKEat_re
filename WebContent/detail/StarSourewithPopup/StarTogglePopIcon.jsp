<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js">
  </script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js">
  </script>





<script type="text/javascript">
	$(document).ready(
		function() {
			$(".glyphicon").on("click", function() {

				$(this).toggleClass("glyphicon-star-empty");
				$(this).toggleClass("glyphicon-star");
			///console.log($(this).class());
			//if(1)
			/* {
				console.log("true");
			} */
			});

			$("#LIKEat").on("click", function() {
				console.log("ddd");
				setTimeout(function() {
					console.log(22222);
					console.log($("body").click());
					console.log($(myModal));
					$(myModal).hide(); // 이건 아닌듯 
					$("body").trigger("click");
					/* 
					$(".fade").hide();
					$(".fade").show();
					 */
				}, 5000)
			});
			//			$(document).ready(function() {
			$("body").on("click", function() {
				console.log("ddd");
				///$("body").css("background-color", "red");
			});
			//		});

		}
	);
</script>
<style>
.aaaa {
	display: none;
}
</style>
</head>
<body>
	<div>
		<!-- 		<button type="button" class="btn btn-lg" data-toggle="modal"
			data-target="#myModal">

		</button> -->

		<span data-target="#myModal" data-toggle="modal"
			class="glyphicon glyphicon-star-empty" id="LIKEat"></span>

	</div>
	<div>
		<button type="button" class="btn btn-default btn-sm">
			<span class="glyphicon glyphicon-star" aria-hidden="true"></span>
			Star
		</button>
	</div>

	<div>
		<span class="glyphicon glyphicon-star"></span> 꽉차 있는애
	</div>




	<!-- Modal -->
	<div class="modal fade" id="myModal" role="dialog">


		<div class="modal-dialog modal-sm">

			<div class="modal-content">
				<!-- 				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>
					<h4 class="modal-title">Modal Header</h4>
				</div>
 -->
				<div class="modal-body">
					<p>Some text in the modal.</p>
				</div>

				<div class="modal-footer">
					<button type="button" class="btn btn-default aaaa"
						data-dismiss="modal">Close</button>
				</div>

			</div>

		</div>
	</div>


</body>
</html>
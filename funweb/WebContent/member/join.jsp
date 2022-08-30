<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../script/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#join').submit(function(){
// 			alert("전송");
			if($('.id').val()==""){
				alert('아이디 입력하세요.');
				$('.id').focus();
				return false;
			}
			if($('.pw').val()==""){
				alert('비밀번호 입력하세요.');
				$('.pw').focus();
				return false;
			}
			if($('.pw').val()!=$('.pw2').val()){
				alert('비밀번호 입력하세요.');
				$('.pw2').focus();
				return false;
			}
			if($('.name').val()==""){
				alert('이름 입력하세요.');
				$('.name').focus();
				return false;
			}
			if($('.email').val()==""){
				alert('이메일 입력하세요.');
				$('.email').focus();
				return false;
			}
			if($('.email').val()!=$('.email2').val()){
				alert('이메일 입력하세요.');
				$('.email2').focus();
				return false;
			}
			
		});
		
		// 아이디 중복체크
		$('.dup').click(function(){
// 			alert("중복");
			$.ajax({
				url:'idcheck.jsp',
				data:{'id':$('id').val()},
				success:function(rdata){
					$('.iddiv').html(rdata);
				}
			})
		});
		
		
	});
</script>
</head>
<body>
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<jsp:include page="../inc/top.jsp"/>
<!-- 헤더들어가는 곳 -->

<!-- 본문들어가는 곳 -->
<!-- 본문메인이미지 -->
<div id="sub_img_member"></div>
<!-- 본문메인이미지 -->
<!-- 왼쪽메뉴 -->
<nav id="sub_menu">
<ul>
<li><a href="#">Join us</a></li>
<li><a href="#">Privacy policy</a></li>
</ul>
</nav>
<!-- 왼쪽메뉴 -->
<!-- 본문내용 -->
<article>
<h1>Join Us</h1>
<form action="joinPro.jsp" id="join" method="post"> 
<fieldset>
<legend>Basic Info</legend>
<label>User ID</label>
<input type="text" name="id" class="id">
<input type="button" value="dup. check" class="dup"><br>

<label></label><div class="iddiv"></div><br>

<label>Password</label>
<input type="password" name="pw" class="pw"><br>
<label>Retype Password</label>
<input type="password" name="pw2" class="pw2"><br>
<label>Name</label>
<input type="text" name="name" class="name"><br>
<label>E-Mail</label>
<input type="email" name="email" class="email"><br>
<label>Retype E-Mail</label>
<input type="email" name="email2" class="email2"><br>
</fieldset>

<fieldset>
<legend>Optional</legend>
<label>Address</label>
<input type="text" name="address"><br>
<label>Phone Number</label>
<input type="text" name="phone"><br>
<label>Mobile Phone Number</label>
<input type="text" name="mobile"><br>
</fieldset>
<div class="clear"></div>
<div id="buttons">
<input type="submit" value="Submit" class="submit">
<input type="reset" value="Cancel" class="cancel">
</div>
</form>
</article>
<!-- 본문내용 -->
<!-- 본문들어가는 곳 -->

<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp"/>
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>
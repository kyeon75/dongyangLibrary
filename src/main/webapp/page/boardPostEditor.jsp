<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	String title = (String)request.getAttribute("title");
%>
<head>
	<script src="//cdn.quilljs.com/1.3.6/quill.js"></script>
	<script src="//cdn.quilljs.com/1.3.6/quill.min.js"></script>
	<link href="//cdn.quilljs.com/1.3.6/quill.snow.css" rel="stylesheet">
	<link href="//cdn.quilljs.com/1.3.6/quill.bubble.css" rel="stylesheet">
</head>

<section class="container">
	<h1 class="board_post_editor_title"><%= title %></h1>
	
	<form action="#" method="post">
		<textarea class="post_title" name="title"></textarea>
		<div class="post_content">
		</div>
		<input class="post_submit" type="submit" value="등록">
	</form>
	<a href="${pageContext.request.contextPath}/board/postEditor"><button class="post_delete_button"> 취소 </button></a>
	<button onclick="console.log(quill.getContents())" class="post_delete_button">테스트</button>
</section>
<script>
	var toolbarOptions = [
	    ['bold', 'italic', 'underline', 'strike'],        // toggled buttons
	    ['blockquote', 'code-block'],
	
	    [{ 'header': 1 }, { 'header': 2 }],               // custom button values
	    [{ 'list': 'ordered' }, { 'list': 'bullet' }],
	    [{ 'script': 'sub' }, { 'script': 'super' }],      // superscript/subscript
	    [{ 'indent': '-1' }, { 'indent': '+1' }],          // outdent/indent
	    [{ 'direction': 'rtl' }],                         // text direction
	
	    [{ 'size': ['small', false, 'large', 'huge'] }],  // custom dropdown
	    [{ 'header': [1, 2, 3, 4, 5, 6, false] }],
	
	    [{ 'color': [] }, { 'background': [] }],          // dropdown with defaults from theme
	    [{ 'font': [] }],
	    [{ 'align': [] }],
	
	    ['clean'],                                         // remove formatting button
	    ['image']
	];
	
	var quill = new Quill('.post_content', {
	    theme: 'snow',
	    modules: {
	        toolbar: {
	            container: toolbarOptions
	        }
	    },
	});

</script>
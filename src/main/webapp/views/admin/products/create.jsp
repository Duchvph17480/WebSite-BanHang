<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${ pageContext.request.contextPath }/css/bootstrap.min.css"></link>
</head>
<body>
	<form:form method="POST"
		action="${ pageContext.request.contextPath }/admin/products/store"
		modelAttribute="product">
		<div class="row">
			<div class="col-7">
				<div class="form-group mt-3">
					<label>Username</label>
					<form:input path="name" class="form-control" />
					<form:errors path="name" element="span" cssClass="text-danger" />
				</div>
				<div class="form-group mt-3">
					<label>Price</label>
					<form:input path="price" class="form-control" />
					<form:errors path="price" element="span" cssClass="text-danger" />
				</div>
				<div class="form-group mt-3">
					<label>createDate</label>
					<form:input path="createDate" type="date" class="form-control" />
					<form:errors path="createDate" element="span"
						cssClass="text-danger" />
				</div>
				<div class="form-group mt-3">
					<label>Available</label>
					<form:input path="Available" class="form-control" />
					<form:errors path="Available" element="span" cssClass="text-danger" />
				</div>
				<div class="form-group mt-4">
					<label>Danh mục</label>
					<form:select path="category" class="form-control">
						<c:forEach items="${listCate}" var="category">
							<form:option value="${category.id}">${category.name}</form:option>
						</c:forEach>
					</form:select>
				</div>
			</div>
			<div class="col-5">
				<script>
					function chooseFile(fileInput) {
						if (fileInput.files && fileInput.files[0]) {
							var reader = new FileReader();
							reader.onload = function(e) {
								$('#image').attr('src', e.target.result);
							}
							reader.readAsDataURL(fileInput.files[0]);
						}
					}
				</script>
				<img src=" https://mdbcdn.b-cdn.net/img/Photos/Slides/img (15).webp" width="70%" id="image">
				<div class="form-group mt-3">
					<label>Image</label> 
					<input name="imageFile" type="file"
						onchange="chooseFile(this)" class="form-control" />
				</div>
			</div>
		</div>
		<button>save</button>
	</form:form>
</body>
<script src="/Assignment_Java5/jquery.min.js"></script>
<script src="/Assignment_Java5/popper.min.js"></script>
<script src="/Assignment_Java5/bootstrap.min.js"></script>
</html>
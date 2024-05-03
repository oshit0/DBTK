<%-- 
    Document   : index
    Created on : 05 3, 23, 5:38:52 PM
    Author     : WANHEDA
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Update</title>
        <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.min.css">
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap.bundle.min.js"></script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery-3.6.4.min.js"></script>
    </head>
    <body>
        <jsp:include page="../Navigation/TopNav.jsp" />
        <div class="container-fluid">
            <main role="main" class="col-md-12 ml-sm-auto col-lg-12 px-md-4 pt-4">
                <div class="card mb-3">
                    <div class="card-body">
                        <div class="form-row">
                            <div class="form-group col-md-12 text-left mb-3">
                                <form method="POST" action="${pageContext.request.contextPath}/employee/update" id="employeeForm" onsubmit="return formValidation()">
                                    <div class="mb-1 row">
                                        <label for="employeeId" class="col-sm-3 col-form-label">Employee ID</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="employeeId"
                                                   value="<c:out value='${employeeDetails.employeeId}'/>" name="employeeId" readonly>
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="firstName" class="col-sm-3 col-form-label">First Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="firstName"
                                                   value="<c:out value='${employeeDetails.firstName}'/>" name="firstName">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="middleName" class="col-sm-3 col-form-label">Middle Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="middleName"
                                                   value="<c:out value='${employeeDetails.middleName}'/>" name="middleName">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="lastName" class="col-sm-3 col-form-label">Last Name</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="lastName"
                                                   value="<c:out value='${employeeDetails.lastName}'/>" name="lastName">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="department" class="col-sm-3 col-form-label">Department</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="department"
                                                   value="<c:out value='${employeeDetails.department}'/>" name="department">
                                        </div>
                                    </div>
                                    <div class="mb-1 row">
                                        <label for="employmentStatus" class="col-sm-3 col-form-label">Employment Status</label>
                                        <div class="col-sm-9">
                                            <input type="text" class="form-control form-control-sm" id="employmentStatus"
                                                   value="<c:out value='${employeeDetails.employmentStatus}'/>" name="employmentStatus">
                                        </div>
                                    </div>
                                    <button type="submit" class="btn btn-sm btn-primary">Save</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </main>
        </div>
    </body>
</html>

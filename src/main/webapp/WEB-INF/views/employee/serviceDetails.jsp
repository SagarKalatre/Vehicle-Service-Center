
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/header.jsp" %>
<!DOCTYPE html>
<html>
<head><title>Service Details</title></head>
<body>
    <h2>Service Details</h2>

    Service ID: ${service.serviceJobCardId}<br><br>
    Service Start Date: ${service.serviceStartDate}<br><br>
    Service End Date: ${service.serviceEndDate}<br><br>
    Contact Number: ${service.contactNumber}<br><br>
    Vehicle ID: ${service.vehicle.vehicleId}<br><br>

    <a href="${pageContext.request.contextPath}/employee/update-service?serviceJobCardId=${service.serviceJobCardId}">
        Update Service
    </a>
</body>
</html>

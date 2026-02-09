<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Factory Form</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        .form-group { margin-bottom: 15px; }
        label { display: inline-block; width: 150px; font-weight: bold; }
        input, select, textarea { width: 300px; padding: 8px; border: 1px solid #ddd; border-radius: 4px; }
        textarea { height: 80px; }
        .btn { padding: 10px 20px; margin: 5px; border: none; border-radius: 4px; cursor: pointer; text-decoration: none; }
        .btn-primary { background-color: #4CAF50; color: white; }
        .btn-secondary { background-color: #666; color: white; }
    </style>
</head>
<body>
    <h1>Factory Form</h1>
    
    <c:set var="isEdit" value="${not empty factory.factoryId}" />
    
    <form action="<c:if test='${isEdit}'>/web/factories/update/${factory.factoryId}</c:if><c:if test='${!isEdit}'>/web/factories/save</c:if>" method="post">
        
        <div class="form-group">
            <label>Factory ID:</label>
            <input type="text" name="factoryId" value="${factory.factoryId}" <c:if test="${isEdit}">readonly</c:if> required />
        </div>
        
        <div class="form-group">
            <label>Principal ID:</label>
            <input type="text" name="principalId" value="${factory.principalId}" />
        </div>
        
        <div class="form-group">
            <label>Company ID:</label>
            <input type="text" name="companyId" value="${factory.companyId}" />
        </div>
        
        <div class="form-group">
            <label>Branch ID:</label>
            <input type="text" name="branchId" value="${factory.branchId}" />
        </div>
        
        <div class="form-group">
            <label>Factory Name:</label>
            <input type="text" name="factoryName" value="${factory.factoryName}" required />
        </div>
        
        <div class="form-group">
            <label>Address:</label>
            <textarea name="address">${factory.address}</textarea>
        </div>
        
        <div class="form-group">
            <label>District:</label>
            <input type="text" name="district" value="${factory.district}" />
        </div>
        
        <div class="form-group">
            <label>State:</label>
            <input type="text" name="state" value="${factory.state}" />
        </div>
        
        <div class="form-group">
            <label>PIN:</label>
            <input type="text" name="pin" value="${factory.pin}" />
        </div>
        
        <div class="form-group">
            <label>GST:</label>
            <input type="text" name="gst" value="${factory.gst}" />
        </div>
        
        <div class="form-group">
            <label>Status:</label>
            <select name="status">
                <option value="ACTIVE" <c:if test="${factory.status eq 'ACTIVE'}">selected</c:if>>ACTIVE</option>
                <option value="INACTIVE" <c:if test="${factory.status eq 'INACTIVE'}">selected</c:if>>INACTIVE</option>
            </select>
        </div>
        
        <div class="form-group">
            <label>ESIC Code:</label>
            <input type="text" name="esicCode" value="${factory.esicCode}" />
        </div>
        
        <div class="form-group">
            <label>PF Code:</label>
            <input type="text" name="pfCode" value="${factory.pfCode}" />
        </div>
        
        <div class="form-group">
            <label>Attendance Type:</label>
            <input type="text" name="attendanceType" value="${factory.attendanceType}" />
        </div>
        
        <div class="form-group">
            <label></label>
            <button type="submit" class="btn btn-primary">Save</button>
            <a href="/web/factories" class="btn btn-secondary">Cancel</a>
        </div>
    </form>
</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Factory Management</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; }
        table { border-collapse: collapse; width: 100%; margin-top: 20px; }
        th, td { border: 1px solid #ddd; padding: 8px; text-align: left; }
        th { background-color: #4CAF50; color: white; }
        tr:hover { background-color: #f5f5f5; }
        .btn { padding: 8px 16px; text-decoration: none; margin: 5px; display: inline-block; border-radius: 4px; }
        .btn-primary { background-color: #4CAF50; color: white; }
        .btn-edit { background-color: #2196F3; color: white; }
        .btn-delete { background-color: #f44336; color: white; }
        .pagination { margin-top: 20px; text-align: center; }
        .pagination a { padding: 8px 12px; margin: 0 4px; text-decoration: none; border: 1px solid #ddd; color: #333; border-radius: 4px; }
        .pagination a.active { background-color: #4CAF50; color: white; border-color: #4CAF50; }
        .pagination a:hover:not(.active) { background-color: #ddd; }
    </style>
</head>
<body>
    <h1>Factory Management</h1>
    <a href="/web/factories/create" class="btn btn-primary">Add New Factory</a>
    
    <form method="get" style="margin-top: 20px; padding: 15px; background: #f5f5f5; border-radius: 4px;">
        <label>Factory ID: <input type="text" name="factoryId" value="${factoryId}" placeholder="Exact match" style="margin-right: 10px;" /></label>
        <label>Factory Name: <input type="text" name="factoryName" value="${factoryName}" placeholder="Starts with" style="margin-right: 10px;" /></label>
        <label>Address: <input type="text" name="address" value="${address}" placeholder="Contains" style="margin-right: 10px;" /></label>
        <button type="submit" class="btn btn-primary">Search</button>
        <a href="/web/factories" class="btn btn-secondary">Clear</a>
    </form>
    
    <table>
        <thead>
            <tr>
                <th>Factory ID</th>
                <th>Factory Name</th>
                <th>Address</th>
                <th>State</th>
                <th>District</th>
                <th>Status</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${factories.content}" var="factory">
                <tr>
                    <td>${factory.factoryId}</td>
                    <td>${factory.factoryName}</td>
                    <td>${factory.address}</td>
                    <td>${factory.state}</td>
                    <td>${factory.district}</td>
                    <td>${factory.status}</td>
                    <td>
                        <a href="/web/factories/edit/${factory.factoryId}" class="btn btn-edit">Edit</a>
                        <a href="/web/factories/delete/${factory.factoryId}" class="btn btn-delete" 
                           onclick="return confirm('Are you sure?')">Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    
    <div class="pagination">
        <c:if test="${totalPages > 0}">
            <c:set var="searchParams" value="${not empty factoryId ? '&factoryId='.concat(factoryId) : ''}${not empty factoryName ? '&factoryName='.concat(factoryName) : ''}${not empty address ? '&address='.concat(address) : ''}" />
            
            <c:if test="${currentPage > 0}">
                <a href="?page=${currentPage - 1}${searchParams}">&laquo; Previous</a>
            </c:if>
            
            <c:forEach begin="0" end="${totalPages - 1}" var="i">
                <a href="?page=${i}${searchParams}" class="${i == currentPage ? 'active' : ''}">${i + 1}</a>
            </c:forEach>
            
            <c:if test="${currentPage < totalPages - 1}">
                <a href="?page=${currentPage + 1}${searchParams}">Next &raquo;</a>
            </c:if>
        </c:if>
    </div>
</body>
</html>

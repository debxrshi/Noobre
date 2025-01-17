<%@ page import="java.util.*, com.model.Scans, com.dao.*" %>
<%
%>
<!DOCTYPE html>
<html>
<head>
    <title>List of Scans</title>
</head>
<body>
    <table border="1">
        <tr>
            <th>File Name</th>
            <th>Uploaded By</th>
            <th>SHA-256</th>
            <th>Analysis</th>
            <th>Scan Date</th>
        </tr>
        <% 
        List<Scans> scanList = ScanDAO.listScans();
        for(Scans scan : scanList) { %>
        <tr>
            <td><%= scan.getFilename() %></td>
            <td><%= scan.getUploadedBy() %></td>
            <td><%= scan.getSha256() %></td>
            <td><%= scan.getAnalysis() %></td>
            <td><%= scan.getScanDate() %></td>
        </tr>
        <% } %>
    </table>
</body>
</html>
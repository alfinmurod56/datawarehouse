<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dwo_uts?user=root&password=" catalogUri="/WEB-INF/queries/adw3.xml">

select {[Measures].[Subtotal]} ON COLUMNS,
  {([Time].[All Times],[Produk],[Customer].[All Customers])} ON ROWS
from [Sales]


</jp:mondrianQuery>





<c:set var="title01" scope="session">Query Fact Sales using Mondrian OLAP</c:set>
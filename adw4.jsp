<%@ page session="true" contentType="text/html; charset=ISO-8859-1" %>
<%@ taglib uri="http://www.tonbeller.com/jpivot" prefix="jp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>


<jp:mondrianQuery id="query01" jdbcDriver="com.mysql.jdbc.Driver" 
jdbcUrl="jdbc:mysql://localhost/dwo_uts?user=root&password=" catalogUri="/WEB-INF/queries/adw4.xml">

select {[Measures].[orderQty]} ON COLUMNS,
  {([Time].[All Times],[Vendor].[All Vendors],[Produk].[All Produks],[Ship].[All Ships])} ON ROWS
from [Order]

</jp:mondrianQuery>





<c:set var="title01" scope="session">Query Fact Purchase using Mondrian OLAP</c:set>
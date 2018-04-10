<%@page import="java.sql.*"%>
<%
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:orcl1", "eshop", "eshop");
ResultSet rs=con.createStatement().executeQuery("select * from state");
%>
<html>
    <head>
        <script src="myscript.js">
      
        </script>
    </head>
    <body>
        <h1>Seller Registration Form</h1><hr>
        <form action="SellerReg">
            <pre>
Seller ID   : <input type="text" name="sid"/>
Seller Name : <input type="text" name="snm"/>
state       : <select name="state" id="stid">
<%
while(rs.next()){

%>
<option onclick="getCities()" value="<%=rs.getString(1)%>"><%=rs.getString(2)%></option>
<%
}
%>
</select>
City        : <select name="city" id="ctid">
</select>
                <input type="submit" value="Submit"/>
            </pre>
        </form>        
    </body>
</html>

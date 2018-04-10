<%@page import="java.sql.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/erp","root","root");
ResultSet rs=con.createStatement().executeQuery("select * from ajax_test");
%>
<html>
    <head>
        <script>
            var request;
            function getProduct(){
                request=new XMLHttpRequest();
                request.onreadystatechange= function (){
                if(request.readyState===4 && request.status===200)
                    {var res=request.responseText;
                        document.getElementById("res").innerHTML=res;      
                    }
                };
                var v=document.getElementById("pcid").value;
                request.open("Get", "ShowPro?pcid="+v, true);
                request.send(null);
            }
            
            
            
            
            
        </script>
        
        
    </head>
    <body>
        <h1>Select Your Desired Product</h1>
        Pick A Product Category : <select name="pcat" id="pcid">
<%
while(rs.next())
       {
    String pcid=rs.getString(1);
    String pcnm=rs.getString(2);
    %>
    <option value="<%=pcid%>" onclick="getProduct()"><%=pcnm%></option>
<%
}
%>            
        </select>        
        <h4><u>List of Products</u></h4>      
        <div id="res"></div>        
    </body>
</html>

   function check(){
        alert("done");
    }    
    
        function checkUser(){
            
            var json = {
               "ui" : $("#uid").val()
            };
            $.ajax({
                "type":"Get",
                "url":"CheckUser",
                "data":json,
                "success":function(data){
                    alert(data);
                 var res=data.split(",");
                   document.getElementById("res").value=res[0];
                },
                "error":function(){
                    alert('unable to connect');
                }
                
            });
        }
        
        function getResult(){
            if(request.readyState==4 && request.status==200)
                {
                var result=request.responseText;
                document.getElementById("res").innerHTML=result;
                }
           else
               document.getElementById("res").innerHTML="Error.."
        }
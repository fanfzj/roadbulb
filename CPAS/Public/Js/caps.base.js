/**
 * Created by 乐 on 15-2-16.
 */
$(document).ready(function(){
     $("#login_button").click(function(){

        var username=$("#username").val();
        var password=$("#password").val();
        var code=$("#code_input").val();
             $.post(APP+"/Home/Public/CheckCode",{"code":code},function(data){
                    if(data.S==true){
                            $.post(APP+"/Home/User/Login",{"username":username,"password":password},function(data){
                                    if(data.S==true){
                                            alert(data.M);
                                    }else{
                                         $("#login_alert").text(data.M);
                                    }
                            });
                    }else{
                      $("#login_alert").text("验证码不正确！");
                    }
             });
     });

});


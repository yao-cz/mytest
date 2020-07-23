<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>ajaxDemo</title>
    <script src="js/jquery-3.5.1.min.js"></script>
    <script>
        $(function () {
            $("#getValue").click(function () {

                $.ajax({
                    url:"ajax/demo",
                    data: {
                        "name": "zhangsan",
                        "age": "18"
                    },
                    type: "get",
                    dataType: "json",
                    // async:true,
                    success: function (data) {
                        $("#div1").html("姓名"+data.name+'<br>'+"年龄："+data.age)
                        alert("-----------"+data)
                    }
                });
            });
        })

    </script>
</head>
<body>
<button id="getValue">获取值</button>
<div id="div1" style="color: aquamarine;width: 80%;height: 80%;background: bisque">

</div>
<div style="color: aquamarine;width: 80%;height: 80%;background: bisque">
    张三喜欢吃栗子
</div>
</body>
</html>

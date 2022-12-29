<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<style>

.dropdown{
    position: relative;
    display: inline-block;
}

.button{
    padding: 10px 40px;
    font-size:20px;
    background-color: brown;
    color: wheat;
}
#drop-content{
    position: absolute;
    z-index: 1;
}
#drop-content a{
    display:block;
    font-size: 20px;
    background-color: #dfdfdf;
    color: black;
    text-decoration: none;
    padding: 10px 36px;
    margin: 2px 0px 0px 0px;
}
</style>
</head>

<body>
    <div class="dropdown">
        <button onclick="dp_menu()" class="button">Drop</button>
        <div style="display: none;" id="drop-content">
            <a href='#'>Menu1</a>
            <a href='#'>Menu2</a>
            <a href='#'>Menu3</a>
            <a href='#'>Menu4</a>
            <a href='#'>Menu5</a>
        </div>
    </div>
     <div class="dropdown">
        <button onclick="dp_menu()" class="button">Drop</button>
        <div style="display: none;" id="drop-content">
            <a href='#'>Menu1</a>
            <a href='#'>Menu2</a>
            <a href='#'>Menu3</a>
            <a href='#'>Menu4</a>
            <a href='#'>Menu5</a>
        </div>
    </div>
     <div class="dropdown">
        <button onclick="dp_menu()" class="button">Drop</button>
        <div style="display: none;" id="drop-content">
            <a href='#'>Menu1</a>
            <a href='#'>Menu2</a>
            <a href='#'>Menu3</a>
            <a href='#'>Menu4</a>
            <a href='#'>Menu5</a>
        </div>
    </div>
 
    <script>
    
        function dp_menu(){
            let click = document.getElementById("drop-content");
            if(click.style.display === "none"){
                click.style.display = "block";
 
            }else{
                click.style.display = "none";
 
            }
        }
    </script>
    
</body>
</html>

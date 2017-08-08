---
title: web
date: 2017-08-07 16:38:57
tags:
- 学习
---
## Html
```
标题：HTML 标题（Heading）是通过<h1> - <h6> 标签来定义的
```
- <h1>这是一个标题</h1>    
  <h2>这是一个标题</h2>
  <h3>这是一个标题</h3> 
```
段落：<p>这是一个段落。</p>
<p>这是另外一个段落。</p>
```  
- <p>这是一个段落。</p>  
  <p>这是另外一个段落。</p>
<!--more-->  

- <a href="http://www.w3cschool.cc">这是一个链接</a>    

- <img src="D:\ywllHexo\MyBlog\source\assets\images\icon.jpg" width="104" height="142"> 

- <canvas id="myCanvas" width="200" height="100"
style="border:1px solid #000000;">
</canvas> 

---
## HTML5 新的 Input 类型
- 选择你喜欢的颜色: <input type="color" name="favcolor">  
- 生日: <input type="date" name="bday">  
- 生日 (日期和时间): <input type="datetime" name="bdaytime">  
- 生日 (日期和时间): <input type="datetime-local" name="bdaytime">  
- E-mail: <input type="email" name="email">  
- 生日 (月和年): <input type="month" name="bdaymonth">  
- 数量 ( 1 到 5 之间 ): <input type="number" name="quantity" min="1" max="5">   
- <input type="range" name="points" min="1" max="10">  
- Search Google: <input type="search" name="googlesearch">  
- 电话号码: <input type="tel" name="usrtel">  
- 选择时间: <input type="time" name="usr_time"> 
- 添加您的主页: <input type="url" name="homepage">
- 选择周: <input type="week" name="week_year">  

---
### web worker 
- 当在 HTML 页面中执行脚本时，页面的状态是不可响应的，直到脚本已完成。   
webworker是运行在后台的JavaScript，独立于其他脚本，不会影响页面的性能。您可以继续做任何愿意做的事情：点击、选取内容等等，而此时 web worker 在后台运行。
<html>
<body>
<p><output id="result"></output></p>
<button onclick="startWorker()">Start Worker</button> 
<button onclick="stopWorker()">Stop Worker</button>
<br><br>
<script>
var w;
function startWorker()
{
if(typeof(Worker)!=="undefined")
{
? if(typeof(w)=="undefined")
??? {
??? w=new Worker("demo_workers.js");
??? }
? w.onmessage = function (event) {
??? document.getElementById("result").innerHTML=event.data;
? };
}
else
{
document.getElementById("result").innerHTML="Sorry, your browser does not support Web Workers...";
}
}

function stopWorker()
{ 
w.terminate();
}
</script>
</body>
</html>

---
## HTML5 表单属性 
- 
autocomplete 属性规定 form 或 input 域应该拥有自动完成功能。
当用户在自动完成域中开始输入时，浏览器应该在该域中显示填写的选项。


- <form action="demo-form.php" autocomplete="on">
First name:<input type="text" name="fname"><br>
Last name: <input type="text" name="lname"><br>
E-mail: <input type="email" name="email" autocomplete="off"><br>
<input type="submit">
</form> 

-
  novalidate 属性的一个boolean 属性.
  novalidate 属性规定在提交表单时不应该验证 form 或 input 域。

- <form action="demo-form.php" novalidate>
E-mail: <input type="email" name="user_email">
<input type="submit">
</form> 
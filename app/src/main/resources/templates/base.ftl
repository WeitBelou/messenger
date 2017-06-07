<#macro wrapper customStylesheets=[] customScripts=[]>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Messenger</title>

  <link rel="stylesheet" href="/webjars/Semantic-UI/semantic.min.css">

<#--Custom stylesheets-->
  <#list customStylesheets as stylesheet>
    <link rel="stylesheet" href="${stylesheet}">
  </#list>

</head>

<body>

<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/Semantic-UI/semantic.min.js"></script>

  <#nested>

<#--Custom js files-->
  <#list customScripts as script>
  <script src="${script}"></script>
  </#list>

</body>
</html>

</#macro>

<#macro menu current="home">
  <#assign
  menuItems = {
  "home": "Домашняя страница",
  "feed": "Лента",
  "chats": "Чаты"
  }>

<div class="ui large top pointing menu">
  <div class="ui container">

    <#list menuItems?keys as key>
      <a class="<#if key == current>active </#if>item">${menuItems[key]}</a>
    </#list>

    <div class="right menu">
      <div class="item">
        <a class="ui button">Вход</a>
      </div>
      <div class="item">
        <a class="ui primary button">Регистрация</a>
      </div>
    </div>

  </div>
</div>
</#macro>

<#macro footer>
  
</#macro>
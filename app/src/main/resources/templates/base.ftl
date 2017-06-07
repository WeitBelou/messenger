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
  "home": {"verbose": "Домашняя страница", "link": "/home"},
  "feed": {"verbose": "Лента", "link": "/feed"},
  "chats": {"verbose": "Чаты", "link": "/chats"}
  }>

<div class="ui large top pointing menu">
  <div class="ui container">

    <#list menuItems?keys as key>
      <a class="<#if key == current>active </#if>item" href="${menuItems[key].link}">
      ${menuItems[key].verbose}</a>
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
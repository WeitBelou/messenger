<#macro wrapper customStylesheets=[] customScripts=[]>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Messenger</title>

  <link rel="stylesheet" href="webjars/Semantic-UI/semantic.min.css">
    <#list customStylesheets as stylesheet>
      <link rel="stylesheet" href="${stylesheet}">
    </#list>
</head>

<body>

    <#nested>

<script src="webjars/jquery/jquery.min.js"></script>
<script src="webjars/Semantic-UI/semantic.min.js"></script>

    <#list customScripts as script>
    <script src="${script}"></script>
    </#list>

</body>
</html>

</#macro>
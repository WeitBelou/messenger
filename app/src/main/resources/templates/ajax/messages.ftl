<#-- @ftlvariable name="messages" type="Iterable<Message>" -->
<#list messages as message>
  <@showMessage message/>
</#list>

<#macro showMessage message>
<div class="ui event">

  <div class="label">

  </div>

  <div class="content">
    <div class="summary">
      <a class="user"> ${message.message} </a>
    ${message.content}
      <div class="date">${message.updatedAt}</div>
    </div>
  </div>
</div>
</#macro>
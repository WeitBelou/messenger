<#-- @ftlvariable name="messages" type="Iterable<Message>" -->
<#import "base.ftl" as base>
<#import "lib/forms.ftl" as forms>

<@base.wrapper>

  <@base.menu current="feed"/>
  <@page/>
  <@base.footer/>

</@base.wrapper>

<#macro page>

<div class="ui segments container">

  <div class="ui segment">
    <@forms.messageForm/>
  </div>

  <div class="ui feed segment">
    <#list messages as message>
    <@showMessage message />
  </#list>

  </div>

</div>

</#macro>

<#macro showMessage message>
<div class="event">

  <div class="label">

  </div>

  <div class="content">
    <div class="summary">
      <a class="user"> ${message.author} </a>
    ${message.content}
      <div class="date">${message.updatedAt}</div>
    </div>
  </div>

</div>
</#macro>
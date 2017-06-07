<#-- @ftlvariable name="messages" type="Iterable<Message>" -->
<#import "lib/base.ftl" as base>
<#import "lib/forms.ftl" as forms>

<@base.wrapper>

  <@base.menu current="feed"/>
  <@page/>
  <@base.footer/>

</@base.wrapper>

<#macro page>

<div class="ui segments container">

  <@forms.messageForm/>

  <div id="messages-container" class="ui feed segment">
  </div>

</div>

</#macro>

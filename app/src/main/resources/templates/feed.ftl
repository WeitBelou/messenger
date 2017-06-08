<#-- @ftlvariable name="message" type="edu.phystech.kosolapov.ivan.messenger.message.Message" -->
<#-- @ftlvariable name="messages" type="Iterable<Message>" -->
<#import "lib/base.ftl" as base>
<#import "/spring.ftl" as spring>

<@base.wrapper customScripts=["/js/feed.js"]>

  <@base.menu current="feed"/>
  <@page/>
  <@base.footer/>

</@base.wrapper>

<#macro page>

<div class="ui segments container">

  <@messageForm message/>

  <div id="messages-container" class="ui feed segment">
  </div>

</div>

</#macro>

<#macro messageForm message>

<form id="message-form" class="ui form segment message-form error" method="post" action="">

  <div class="field">
    <label>Автор</label>

    <@spring.formInput "message.author"/>
  </div>

  <div class="field">
    <label>Сообщение</label>

    <@spring.formInput "message.content"/>
  </div>

  <button class="ui submit button">Отправить</button>

  <#if spring.status.errorMessages?has_content>
    <div class="ui error message">
      <#list spring.status.errorMessages as error>
        <div>${error}</div></#list>
    </div>
  </#if>
</form>
</#macro>

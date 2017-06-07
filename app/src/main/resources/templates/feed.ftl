<#-- @ftlvariable name="messages" type="Iterable<Message>" -->
<#import "base.ftl" as base>

<@base.wrapper>

  <@base.menu current="feed"/>
  <@page/>
  <@base.footer/>

</@base.wrapper>

<#macro page>

<div class="ui segments container">

  <div class="ui segment">
    <form class="ui form" method="post" action="">
      <div class="field">
        <label>Автор</label>
        <input type="text" name="author" placeholder="Ваше имя...">
      </div>

      <div class="field">
        <label>Сообщение</label>
        <input type="text" name="content" placeholder="Текст сообщения...">
      </div>

      <button class="ui button" type="submit">Отправить</button>
    </form>
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
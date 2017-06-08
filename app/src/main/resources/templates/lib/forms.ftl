<#macro messageForm>
<form id="message-form" class="ui form segment message-form error" method="post" action="">
  <div class="field">
    <label>Автор</label>
    <input name="author" placeholder="Ваше имя...">
  </div>

  <div class="field">
    <label>Сообщение</label>
    <input name="content" placeholder="Текст сообщения...">
  </div>

  <button class="ui submit button">Отправить</button>

  <div class="ui error message"></div>
</form>
</#macro>
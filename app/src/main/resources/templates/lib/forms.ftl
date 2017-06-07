<#macro messageForm>
<form class="ui form" method="post" action="">
  <div class="field">
    <label>Автор</label>
    <input name="author" placeholder="Ваше имя...">
  </div>

  <div class="field">
    <label>Сообщение</label>
    <input name="content" placeholder="Текст сообщения...">
  </div>

  <button class="ui button">Отправить</button>
</form>
</#macro>
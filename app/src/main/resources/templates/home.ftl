<#import "base.ftl" as base>

<@base.wrapper>

  <@base.menu current="home"/>
  <@page/>
  <@base.footer/>

</@base.wrapper>

<#macro page>
<div class="pusher">
  <div class="ui vertical masthead center aligned segment">

    <div class="ui text container">

      <h2>Java Messenger для Технотрека</h2>

      <a class="ui huge primary button">Лента<i class="right arrow icon"></i></a>
    </div>
  </div>
</div>

</#macro>
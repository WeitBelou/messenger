<#assign titleBase='Java Messenger'>
<#assign title='${titleBase} | Sign Up'>
<#assign loginPrompt='Log-in to your account'>
<#assign signupPrompt='New to us?'>

<!DOCTYPE html>
<html>
<head>
  <title>${title}</title>
  <link rel="stylesheet" href="/webjars/Semantic-UI/semantic.min.css">
  <link rel="stylesheet" href="/static/stylesheets/signup.css">
</head>
<body>

<div class="ui middle aligned center aligned grid">
  <div class="column">
    <h2 class="ui teal header">${signupPrompt}</h2>

    <form class="ui large form">
      <div class="ui stacked segment">

        <div class="field">
          <div class="ui left icon input">
            <i class="user icon"></i>
            <input name="email" placeholder="E-mail address">
          </div>
        </div>

        <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" name="password" placeholder="Password">
          </div>
        </div>

        <div class="field">
          <div class="ui left icon input">
            <i class="lock icon"></i>
            <input type="password" name="passwordConfirm" placeholder="Confirm password">
          </div>
        </div>

        <div class="ui fluid large teal submit button">Login</div>

        <div class="ui error message"></div>
      </div>
    </form>

    <div class="ui message">
    ${loginPrompt}
      <a href="/signup">Login</a>
    </div>
  </div>
</div>

<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="/webjars/Semantic-UI/semantic.min.js"></script>

<script src="/static/javascript/signup.js"></script>
</body>

</html>
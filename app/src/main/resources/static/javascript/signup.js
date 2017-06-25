$(function () {
  $('.ui.form')
    .form({
      fields: {
        email: {
          identifier: 'email',
          rules: [
            {
              type: 'empty',
              prompt: 'Please enter your e-mail'
            },
            {
              type: 'email',
              prompt: 'Please enter a valid e-mail'
            }
          ]
        },
        password: {
          identifier: 'password',
          rules: [
            {
              type: 'empty',
              prompt: 'Please enter your password'
            },
            {
              type: 'length[6]',
              prompt: 'Your password must be at least 6 characters'
            }
          ]
        },
        passwordConfirm: {
          identifier: 'passwordConfirm',
          rules: [
            {
              type: 'empty',
              prompt: 'Please confirm your password'
            },
            {
              type: 'length[6]',
              prompt: 'Your password must be at least 6 characters'
            },
            {
              type: 'match[password]',
              prompt: 'Passwords don\'t match'
            }
          ]
        }
      }
    })
})


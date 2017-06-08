$(function () {
  $('#messages-container').load('/ajax/messages')

  $('#message-form').form({
    fields: {
      author: {
        identifier: 'author',
        rules: [{
          type: 'empty',
          prompt: 'Укажите автора'
        }]
      },
      content: {
        identifier: 'content',
        rules: [{
          type: 'empty',
          prompt: 'Введите текст сообщения'
        }]
      },
    }
  })
})

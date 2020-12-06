Quando("eu faço o login com {string} e {string}") do |email, password|
  @login.go
  @login.with(email, password)
end

Então("devo ser autenticado") do
  puts get_token
  #expect(get_token.length).to be 147 #espero que o token tenha 147 caracteres
end

Então("devo ver {string} na área logada") do |expect_name|
  expect(@sidebar.logged_user).to eql expect_name #verifica se o retono do user = expect_name(Tony Stark)
  #expect(page).to have_text expect_name #verifica se o expect_name(Tony Stark) contém como todo na página. Verifica o cód HTML
end

Então("não devo ser autenticado") do
  expect(get_token).to be nil #espero que o token seja nulo
end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
  expect(@login.alert).to eql expect_message
end

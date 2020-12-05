Quando("eu faço o login com {string} e {string}") do |email, password|
  visit "/"
  find("#emailId").set email
  find("#passId").set password
  click_button "Entrar"
  sleep 3
end

Então("devo ser autenticado") do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  expect(token.length).to be 147 #espero que o token tenha 147 caracteres
end

Então("devo ver {string} na área logada") do |expect_name|
  user = find(".sidebar-wrapper .user .info span")
  expect(user.text).to eql expect_name #verifica se o retono do user = expect_name(Tony Stark)
  #expect(page).to have_text expect_name #verifica se o expect_name(Tony Stark) contém como todo na página. Verifica o cód HTML
end

Então("não devo ser autenticado") do
  js_script = 'return window.localStorage.getItem("default_auth_token");'
  token = page.execute_script(js_script)
  expect(token).to be nil #espero que o token seja nulo
end

Então("devo ver a mensagem de alerta {string}") do |expect_message|
  alert = find(".alert")
  expect(alert.text).to eql expect_message
end

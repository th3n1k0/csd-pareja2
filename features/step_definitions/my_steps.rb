
Feature:
  Como Thiago
  Quiero jugar adivinar parejas
  Para divertirme y ejercitar la memoria

Scenario: el juego inicia en 0
  Given que inicia el juego
  Then debo ver "0"

Given(/^que abro la applicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end

When(/^inicio una partida$/) do
  click_button("iniciar")
end




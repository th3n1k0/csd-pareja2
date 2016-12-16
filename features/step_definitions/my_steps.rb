Given(/^que abro la applicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end

When(/^defino a "([^"]*)" como jugador$/) do |jugador|
  fill_in("jugador", :with => "Thiago") 
end

When(/^inicio una partida$/) do
  click_button("iniciar")
end


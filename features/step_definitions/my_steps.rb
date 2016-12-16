Given(/^que abro la applicacion$/) do
  visit '/'
end

Then(/^debo ver "(.*?)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end

When(/^inicio una partida$/) do
  click_button("iniciar")
end



# When(/^defino a "([^"]*)" como jugador$/) do |jugador|
#   visit '/'
#   fill_in("jugador", :with => "Thiago") 
#   click_button("iniciar")
# end
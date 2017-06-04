Then (/^I should see the Search Bar$/) do
  expect(page).to have_selector('input', id: 'search')
end

Then (/^I should see the "(.*?)" link$/) do |link|
  expect(page).to have_link(link)
end

Then (/^I should see the Location$/) do
  expect(page).to have_selector('div', id: 'location')
end

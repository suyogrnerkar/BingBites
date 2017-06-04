email = 'fake@mail.com'
password = 'secretpassword'

Given (/^we are mocking a successful Twitter response$/) do
  OmniAuth.config.test_mode = true
  Capybara.default_host = 'http://localhost:3000/auth/twitter/callback'

  OmniAuth.config.mock_auth[:twitter] = 
  {
  'uid' => '1337',
  'provider' => 'twitter',
  'info' => {
    'name' => 'hi',
    'location' => 'Yoooo',
    'urls' => {'Twitter' => 'xxxx:///xxx'},
    'image_url' => 'jejejr'
    }
  }
  Eatery.create(name: "boy",address: "cave")
  @testcat = Category.create(name: "AMERICANO")
  @testcat.save
  @test = Eatery.new(name: "boy",address: "cave")
  @test.category_id = @testcat.id
  @test.save
  db_category = Category.find_by_name('AMERICANO')
  db_eatery = Eatery.find_by_name('boy')
  
  expect(db_eatery.name).to eq 'boy'
  expect(db_category.name).to eq 'AMERICANO'
  Category.find_by_name('AMERICANO')
end

When (/^I click on "(.*?)"$/) do |link| 
  visit root_path
  expect(page).to have_link(link)
  click_link(link)
end

### THEN ###
Then(/^I should be signed in$/) do
  expect(page).to have_content "LOG OUT"
end

When(/^press "([^"]*)" button$/) do |button|
  visit eateries_path
  click_link_or_button("LOG OUT")
  response.should redirect_to('/')
end

# Then(/^I should be on the homepage$/) do
#   assert page.current_path == root_path
# end
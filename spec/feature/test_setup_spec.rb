feature 'Testing infrastructure working!' do

  scenario "should print 'Hello Battle!'" do
    visit("/")
    expect(page).to have_content('Hello Battle!')
  end
end

feature 'Enter Players' do

  scenario "should have form to enter two players" do
    visit("/")
    expect(page).to have_content('Player 1 ?')
    expect(page).to have_content('Player 2 ?')
  end
end

feature 'Enter Players' do

  scenario "should have form to enter two players" do
    visit("/")
    fill_in 'player_1', with: "Sophie"
    fill_in 'player_2', with: "Rae"
    click_button("Submit")
    expect(page).to have_content("Sophie vs. Rae")
  end
end

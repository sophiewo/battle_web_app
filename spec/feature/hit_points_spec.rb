require_relative 'sign_in_process'

feature 'Checks to see other players hit points' do
  scenario 'Shows Player 2 Hit Points' do
    sign_in_process
    expect(page).to have_content( "Bene: 100 HP")
  end
end

feature 'Checks that player 1 can attack player 2' do
  scenario 'shows button to allow attack' do
    sign_in_process
    click_button('Attack')
    expect(page).to have_content ("Sophie attacked Bene")
  end
end

feature 'Allow player1 to attack player 2 and reduce their hp' do
  scenario 'reduces hit points' do
    sign_in_process
    click_button('Attack')
    expect(page).to have_content("Bene HP = 90")
  end
end

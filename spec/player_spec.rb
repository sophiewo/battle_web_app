require 'player'
describe Player do
  let(:player_1) {Player.new("Bene")}
  it 'has a name' do
    expect(player_1.name).to eq("Bene")
  end
end

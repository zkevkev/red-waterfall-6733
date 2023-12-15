require 'rails_helper'

RSpec.describe Character do
  before(:each) do
    character_details = {
      _id: '5cf5679a915ecad153ab68da',
      name: 'Azula',
      photoUrl: 'https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941',
      allies: ['Ozai', 'Zuko'],
      enemies: ["Iroh",
      "Zuko",
      "Kuei",
      "Long Feng",
      "Mai",
      "Ty Lee",
      "Ursa "],
      affiliation: " Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
    }
    @character = Character.new(character_details)
  end

  it 'has attributes' do
    expect(@character.id).to eq('5cf5679a915ecad153ab68da')
    expect(@character.name).to eq('Azula')
    expect(@character.image).to eq('https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941')
    expect(@character.allies).to eq(['Ozai', 'Zuko'])
    expect(@character.enemies).to eq(["Iroh",
    "Zuko",
    "Kuei",
    "Long Feng",
    "Mai",
    "Ty Lee",
    "Ursa "])
    expect(@character.affiliation).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end
end

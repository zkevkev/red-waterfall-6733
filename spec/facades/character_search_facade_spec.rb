require 'rails_helper'

RSpec.describe CharactersSearchFacade, type: :facade do
  before(:each) do
    @facade = CharactersSearchFacade.new  
  end

  it '#nation_characters' do
    expect(@facade.nation_characters('Fire Nation')).to be_a(Array)

    @facade.nation_characters('Fire Nation').each do |character|
      expect(character).to be_a(Character)
      expect(character).to respond_to(:id)
      expect(character).to respond_to(:name)
      expect(character).to respond_to(:image)
      expect(character).to respond_to(:allies)
      expect(character).to respond_to(:enemies)
      expect(character).to respond_to(:affiliation)
    end
  end
end

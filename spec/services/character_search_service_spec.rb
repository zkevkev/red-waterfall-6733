require 'rails_helper'

RSpec.describe CharactersSearchService do
  before(:each) do
    @service = CharactersSearchService.new
  end

  describe '#conn' do
    it 'establishes a connection with internal API' do
      expect(@service.conn).to be_a(Faraday::Connection)
    end
  end

  describe '#get_url' do
    it 'returns a nested hash response for a valid API endpoint' do
      expect(@service.get_url('v1/characters')).to be_a(Array)
      expect(@service.get_url('v1/characters')[0]).to be_a(Hash)
    end
  end

  describe '#nation_query_25' do
    it 'returns a nested hash of character data' do
      expect(@service.nation_query_25('Fire Nation')).to be_a(Array)
      expect(@service.nation_query_25('Fire Nation')[0]).to be_a(Hash)

      characters = @service.nation_query_25('Fire Nation')

      characters.each do |character|
        expect(character).to have_key(:_id)
        expect(character).to have_key(:name)
        # expect(character).to have_key(:photoUrl) some entries not returning key
        expect(character).to have_key(:allies)
        expect(character).to have_key(:enemies)
        expect(character).to have_key(:affiliation)
      end
    end
  end

  describe '#nation_query_full' do
    it 'returns a nested hash of character data' do
      expect(@service.nation_query_full('Fire Nation')).to be_a(Array)
      expect(@service.nation_query_full('Fire Nation')[0]).to be_a(Hash)

      characters = @service.nation_query_full('Fire Nation')

      characters.each do |character|
        expect(character).to have_key(:_id)
        expect(character).to have_key(:name)
        # expect(character).to have_key(:photoUrl) some entries not returning key
        expect(character).to have_key(:allies)
        expect(character).to have_key(:enemies)
        expect(character).to have_key(:affiliation)
      end
    end
  end
end

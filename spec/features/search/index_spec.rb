require 'rails_helper'

RSpec.describe 'Search Index Page', type: :feature do
  context 'fire nation was searched from root' do
    it 'redirects to search index' do
      visit '/'

      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
      # get members count from pry data (or fixture)
      expect(page).to have_content('Total Members: ')
      expect(page).to have_content('Name: ', count: 25)
      within('#5cf5679a915ecad153ab68da-Azula') do
        expect(page).to have_content('Name: Azula')
        expect(page).to have_xpath("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
        expect(page).to have_content('Allies: Ozai, Zuko')
        expect(page).to have_content('Enemies: Iroh, Zuko, Kuei, Long Feng, Mai, Ty Lee, Ursa')
        expect(page).to have_content("Affiliations: Azula's team (formerly), Dai Li (formerly), Fire Nation, Fire Nation Royal Family, Fire Warriors, Royal Fire Academy for Girls (formerly)")
      end
    end
  end
end

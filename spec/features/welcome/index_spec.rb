require 'rails_helper'

RSpec.describe 'Welcome Index Page', type: :feature do
  context 'fire nation is selected from select field and submitted' do
    it 'redirects to search index' do
      visit '/'

      select 'Fire Nation', from: :nation
      click_button 'Search For Members'

      expect(current_path).to eq(search_path)
    end
  end
end

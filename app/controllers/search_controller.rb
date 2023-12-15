class SearchController < ApplicationController
  def index
    characters_search_facade = CharactersSearchFacade.new
    @characters = characters_search_facade.nation_characters(params[:nation])
    @character_count = characters_search_facade.nation_characters_count(params[:nation])
  end
end

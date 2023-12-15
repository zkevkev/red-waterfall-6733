class CharactersSearchFacade
  def nation_characters(nation)
    characters_search_service = CharactersSearchService.new
    parsed = characters_search_service.nation_query(nation)
    parsed.map do |character_data|
      Character.new(character_data)
    end
  end
end

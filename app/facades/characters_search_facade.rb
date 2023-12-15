class CharactersSearchFacade
  def nation_characters(nation)
    characters_search_service = CharactersSearchService.new
    parsed = characters_search_service.nation_query_25(nation)
    parsed.map do |character_data|
      Character.new(character_data)
    end
  end

  def nation_characters_count(nation)
    characters_search_service = CharactersSearchService.new
    parsed = characters_search_service.nation_query_full(nation)
    characters = parsed.map do |character_data|
      Character.new(character_data)
    end
    characters.count
  end
end

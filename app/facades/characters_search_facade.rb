class CharactersSearchFacade
  def nation_characters(nation)
    characters_search_service = CharactersSearchService.new
    parsed = characters_search_service.nation_query(nation)
    parsed.map do |character_data|
      Character.new(character_data)
    end
  end

  def nation_characters_count
    # remove limit from service or build to another service method
    # call nation_characters(nation).count to get total number of characters
  end
end

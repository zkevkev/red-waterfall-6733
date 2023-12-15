class CharactersSearchService
  def conn
    conn = Faraday.new(url: 'https://last-airbender-api.fly.dev/api/')
  end
  
  def get_url(url)
    response = conn.get(url)
    JSON.parse(response.body, symbolize_names: true)
  end
  
  def nation_query_25(nation)
    nation = nation.gsub(' ', '+')
    get_url("v1/characters?affiliation=#{nation}&perPage=25&page=1")
  end

  def nation_query_full(nation)
    nation = nation.gsub(' ', '+')
    get_url("v1/characters?affiliation=#{nation}&perPage=500&page=1")
  end
end

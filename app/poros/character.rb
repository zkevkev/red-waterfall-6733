class Character
  attr_reader :id,
              :name,
              :image,
              :allies,
              :enemies,
              :affiliation

  def initialize(details)
    @id = details[:_id]
    @name = details[:name]
    @image = details[:photoUrl]
    @allies = details[:allies]
    @enemies = details[:enemies]
    @affiliation = details[:affiliation]
  end
end

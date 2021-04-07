class NationsFacade
  def self.nation_residents(query)
    info =  NationService.all_characters.reduce([]) do |memo, character|
      if character[:affiliation]
        memo << character if character[:affiliation].downcase.include?(query)
      end
      memo
    end
  end
end

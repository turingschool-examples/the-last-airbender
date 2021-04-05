FactoryBot.define do
	factory :person do
		name { Faker::Games::LeagueOfLegends.summoner_spell }
		description { Faker::Lorem.word}
		unit_price { Faker::Number.decimal(l_digits: 3, r_digits:2)}
		merchant
	end
end

require 'rails_helper'

RSpec.describe Nation do
  it 'exists' do
    attrs = {
      name: "Afiko",
      photoUrl: "https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128",
      allies: "Fire Nation",
      enemies: "Aang",
      affiliation: "Fire Nation"
    }

    nation = Nation.new(attrs)

    expect(nation).to be_a Nation
    expect(nation.name).to eq("Afiko")
    expect(nation.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/2/24/Afiko.png/revision/latest?cb=20121121024128")
    expect(nation.allies).to eq("Fire Nation")
    expect(nation.enemies).to eq("Aang")
    expect(nation.affiliations).to eq("Fire Nation")
  end
end

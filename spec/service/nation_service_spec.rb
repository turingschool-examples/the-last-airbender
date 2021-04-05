require 'rails_helper'

describe "service test" do
  it "returns all the characters in API" do
    data = NationService.all_characters

    expect(data).to be_a(Array)
    expect(data.count).to eq(497)

    expect(data.first).to be_a(Hash)
    expect(data.first).to have_key(:_id)
    expect(data.first[:_id]).to be_a(String)
    expect(data.first).to have_key(:allies)
    expect(data.first[:allies]).to be_a(Array)
    expect(data.first).to have_key(:enemies)
    expect(data.first[:enemies]).to be_a(Array)
    expect(data.first).to have_key(:photoUrl)
    expect(data.first[:photoUrl]).to be_a(String)
    expect(data.first).to have_key(:name)
    expect(data.first[:name]).to be_a(String)
    expect(data.first).to have_key(:affiliation)
    expect(data.first[:affiliation]).to be_a(String)

    expect(data.last).to be_a(Hash)
    expect(data.last).to have_key(:_id)
    expect(data.last[:_id]).to be_a(String)
    expect(data.last).to have_key(:allies)
    expect(data.last[:allies]).to be_a(Array)
    expect(data.last).to have_key(:enemies)
    expect(data.last[:enemies]).to be_a(Array)
    expect(data.last).to have_key(:photoUrl)
    expect(data.last[:photoUrl]).to be_a(String)
    expect(data.last).to have_key(:name)
    expect(data.last[:name]).to be_a(String)
    expect(data.last).to have_key(:affiliation)
    expect(data.last[:affiliation]).to be_a(String)
  end
end

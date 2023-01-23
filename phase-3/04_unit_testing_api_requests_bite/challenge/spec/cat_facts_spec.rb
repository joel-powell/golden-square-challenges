require "cat_facts"

describe CatFacts do
  it "calls the API and return a cat fact" do
    requester_dbl = double :requester
    json = %({"fact":"A cat's nose is as unique as a human's fingerprint.","length":51})
    url = URI("https://catfact.ninja/fact")
    expect(requester_dbl).to receive(:get).with(url).and_return(json)
    cat_facts = CatFacts.new(requester_dbl)
    expect(cat_facts.provide).to eq "Cat fact: A cat's nose is as unique as a human's fingerprint."
  end
end

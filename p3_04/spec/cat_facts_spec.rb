require "cat_facts"

describe CatFacts do
  it "calls the API and return a cat fact" do
    requester_dbl = double :requester
    result = '{"fact":"A cat has approximately 60 to 80 million olfactory cells (a human has between 5 and 20 million).","length":96}'
    url = URI("https://catfact.ninja/fact")
    expect(requester_dbl).to receive(:get).with(url).and_return(result)
    cat_facts = CatFacts.new(requester_dbl)
    expect(cat_facts.provide).to eq "Cat fact: A cat has approximately 60 to 80 million olfactory cells (a human has between 5 and 20 million)."
  end
end


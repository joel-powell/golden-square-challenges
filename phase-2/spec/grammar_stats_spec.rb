require "grammar_stats"

describe "GrammarStats" do
  describe "#check" do
    context "given a string with correct grammar" do
      it "returns true" do
        grammar = GrammarStats.new
        expect(grammar.check("Hello.")).to be true
        expect(grammar.check("Hello world!")).to be true
        expect(grammar.check("Maybe a question?")).to be true
      end
    end

    context "given a string with incorrect grammar" do
      it "returns false" do
        grammar = GrammarStats.new
        expect(grammar.check("ello")).to be false
        expect(grammar.check("Hello world")).to be false
        expect(grammar.check("maybe a question?")).to be false
      end
    end

    context "given an empty string" do
      it "throws an error" do
        grammar = GrammarStats.new
        expect { grammar.check("") }.to raise_error "Not a sentence"
      end
    end

    context "given nil" do
      it "throws an error" do
        grammar = GrammarStats.new
        expect { grammar.check(nil) }.to raise_error "Not a sentence"
      end
    end
  end

  describe "#percentage_good" do
    context "after checking a single string with correct grammar" do
      it "returns 100" do
        grammar = GrammarStats.new
        grammar.check("Hello.")
        expect(grammar.percentage_good).to eq 100
      end
    end

    context "after checking 2 strings of correct and incorrect grammar" do
      it "returns 50" do
        grammar = GrammarStats.new
        grammar.check("Hello.")
        grammar.check("ello")
        expect(grammar.percentage_good).to eq 50
      end
    end

    context "after checking 2 strings of correct and a single string of incorrect grammar" do
      it "returns 67" do
        grammar = GrammarStats.new
        grammar.check("Hello.")
        grammar.check("Hello world!")
        grammar.check("ello")
        expect(grammar.percentage_good).to eq 67
      end
    end
  end
end

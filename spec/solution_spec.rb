require "./lib/solution"

describe Solution do # rubocop:disable Metrics/BlockLength
  subject(:caesar_solution) { described_class.new }

  describe "#to_ascii_upper" do
    it "converts A and shift by 5, to 70" do
      # allow(caesar_solution).to receive(:player_input).and_return(valid_input)
      expect(caesar_solution.to_ascii_upper("A", 5)).to eq(70)
    end

    it "converts Z and shift by 1, to 65" do
      # allow(caesar_solution).to receive(:player_input).and_return(valid_input)
      expect(caesar_solution.to_ascii_upper("Z", 1)).to eq(65)
    end
  end

  describe "#to_ascii_lower" do
    it "converts a and shift by 5, to 102" do
      # allow(caesar_solution).to receive(:player_input).and_return(valid_input)
      expect(caesar_solution.to_ascii_lower("a", 5)).to eq(102)
    end

    it "converts z and shift by 1, to 97" do
      # allow(caesar_solution).to receive(:player_input).and_return(valid_input)
      expect(caesar_solution.to_ascii_lower("z", 1)).to eq(97)
    end
  end

  describe "#to_ascii" do
    context "when input char is lowercase" do
      it "calls to_ascii_upper" do
        allow(caesar_solution).to receive(:to_ascii_lower)
        expect(caesar_solution).to receive(:to_ascii_lower).with("a", 1).once
        caesar_solution.to_ascii("a", 1)
      end
    end

    context "when input char is uppercase" do
      it "calls to_ascii_upper" do
        allow(caesar_solution).to receive(:to_ascii_upper)
        expect(caesar_solution).to receive(:to_ascii_upper).with("A", 1).once
        caesar_solution.to_ascii("A", 1)
      end
    end

    context "when input char is symbol or non-alphabetical" do
      it "return original" do
        expect(caesar_solution.to_ascii("!", 1)).to eql("!")
      end
    end
  end

  describe "#caesar_cipher" do
    # integration test
    it "encrypt string correctly" do
      # allow(caesar_solution).to receive(:player_input).and_return(valid_input)
      expect(caesar_solution.caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
  end
end

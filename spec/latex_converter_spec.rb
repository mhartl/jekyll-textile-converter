require File.dirname(__FILE__) + '/spec_helper'

RSpec.describe(Jekyll::Converters::Latex) do
  let(:converter) { described_class.new }

  context "minimal example" do
    it "converts LaTeX to HTML" do
      expect(converter.convert("\\emph{yo}").strip).to eq("<p><em>yo</em>\n</p>")
    end
  end
end

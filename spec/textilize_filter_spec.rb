require File.dirname(__FILE__) + '/spec_helper'

RSpec.describe(Jekyll::Filters) do
  class JekyllFilter
    include Jekyll::Filters
    attr_accessor :site, :context

    def initialize(opts = {})
      @site = Jekyll::Site.new(Jekyll::Configuration::DEFAULTS)
      @context = Liquid::Context.new({}, {}, { :site => @site })
    end
  end

  let(:filter) { JekyllFilter.new }
  let(:latex)  { "something \\textbf{really} simple" }
  let(:html)   { "<p>something <strong>really</strong> simple\n</p>" }

  it "should convert latex" do
    expect(filter.latexify(latex)).to eq(html)
  end
end

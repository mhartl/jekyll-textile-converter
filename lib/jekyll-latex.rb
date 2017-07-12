require 'jekyll'

root = File.expand_path('jekyll-latex', File.dirname(__FILE__))
require "#{root}/filters"
require "#{root}/version"

require File.expand_path('jekyll/converters/latex', File.dirname(__FILE__))

module Jekyll
  module LatexConverter
  end
end

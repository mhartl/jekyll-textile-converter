module Jekyll
  module Converters
    class Latex < Converter
      safe true

      DEFAULT_CONFIGURATION = {
        'latex_ext' => 'tex',
      }

      def initialize(config = {})
        @config = Jekyll::Utils.deep_merge_hashes(DEFAULT_CONFIGURATION, config)
        @setup = false
      end

      def setup
        return if @setup
        require 'polytexnic'
        @setup = true
      rescue LoadError
        STDERR.puts 'You are missing a library required for Latex. Please run:'
        STDERR.puts '  $ [sudo] gem install polytexnic'
        raise Errors::FatalException.new("Missing dependency: polytexnic")
      end

      def extname_list
        @extname_list ||= @config['latex_ext'].split(',').map { |e| ".#{e}" }
      end

      def matches(ext)
        extname_list.include? ext.downcase
      end

      def output_ext(ext)
        ".html"
      end

      def convert(content)
        setup
        return Polytexnic::Pipeline.new(content, article: true).to_html
      end
    end
  end
end

module Jekyll
  module Filters
    # Convert a Latex string into HTML output.
    #
    # input - The Latex String to convert.
    #
    # Returns the HTML formatted String.
    def latexify(input)
      site = @context.registers[:site]
      converter = if site.respond_to?(:find_converter_instance)
        site.find_converter_instance(Jekyll::Converters::Latex)
      else
        site.getConverterImpl(Jekyll::Converters::Latex)
      end
      converter.convert(input)
    end
  end
end

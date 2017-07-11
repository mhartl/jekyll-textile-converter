# Jekyll::Latex::Converter

Convert your `.latex` Jekyll content. For Jekyll 3.0 and up.

[![Build Status](https://travis-ci.org/jekyll/jekyll-latex-converter.svg?branch=master)](https://travis-ci.org/jekyll/jekyll-latex-converter)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-latex-converter'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jekyll-latex-converter

Lastly, add it to your `_config.yml` file:

    gems:
    - jekyll-latex-converter

## Usage

Plop in a file with YAML front matter and watch Jekyll gobble it up and spit out beautiful HTML.

If you'd like to use a file extension other than `.latex`, you may
specify a comma-separated list of extensions in your `_config.yml`, like this:

    latex_ext: "latex,txtl,tl"

If that is the given configuration, then all files with `.latex`,
`.txtl`, and `.tl` file extensions will be read in and interpreted as
Latex. They must still contain YAML front matter.

## Contributing

1. Fork it ( https://github.com/jekyll/jekyll-latex-converter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

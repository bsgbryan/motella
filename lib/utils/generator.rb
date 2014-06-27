require 'css_parser'
include CssParser
require 'plist'

module Motella
  class Generator
    def self.plist
      # p "WHERE AM I #{File.dirname( __FILE__ )}"
      './motella.plist'
    end

    def self.gen_plist( css )
      parser = CssParser::Parser.new
      parser.load_file!( css )
      fonts = {}
      parser.each_selector do |selector, declarations, _|
        next if selector !~ /\A.icon\-/
        name = selector[/\.(.*)\:before/,1]
        # p "NAME #{name} = #{declarations[12..-3]}"
        next unless name and name != 'icon-large'
        fonts[name] = "e#{declarations[12..-3]}"
      end
      write( fonts )
    end

    def self.write( fonts )
      File.open( plist, 'w' ) { |f| f << fonts.to_plist }
    end
  end
end

module Paperclip
  class HttpUrlProxyAdapter < UriAdapter
    def self.register
      Paperclip.io_adapters.register self do |target|
        String === target && target =~ REGEXP
      end
    end

    REGEXP = /\Ahttps?:\/\//.freeze

    def initialize(target, options = {})
      escaped = URI.encode_www_form_component(target).gsub('+', '%20')
      super(URI(target == URI.unescape(target) ? escaped : target), options)
    end
  end
end

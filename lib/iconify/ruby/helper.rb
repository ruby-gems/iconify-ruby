module Iconify
  module Ruby
    module Helper
      def iconify_icon(name, options = {})
        locate_name = options.delete(:locate) || "bx"
        options = options.dup

        locate = Iconify::Ruby.locate(locate_name)
        height = locate["height"]
        width = locate["width"]

        options.merge!({
          viewBox: "0 0 #{width} #{height}",
          version: "1.1",
        })

        path = locate["icons"][name]["body"]
        "<svg xmlns='http://www.w3.org/2000/svg' #{iconify_html_attributes(options)}>#{path}</svg>"
      end

      def iconify_html_attributes(options)
        attrs = ""
        options.each { |attr, value| attrs += "#{attr}=\"#{value}\" " }
        attrs.strip
      end
    end
  end
end

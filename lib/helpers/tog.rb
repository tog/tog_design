module Nanoc::Helpers

  module Tog

    def stylesheet_link_tag(css)
      "<link rel='stylesheet' href='#{asset(css).path}' type='text/css' media='screen'>"
    end
    def javascript_include_tag(js)
      "<script type='text/javascript' src='#{asset(js).path}'></script>"
    end

    def inject_js
      @page.extra_javascripts.uniq.collect{ |js|
        javascript_include_tag js
      }.join("\n")
    end

    def inject_css
      @page.extra_stylesheets.uniq.collect{ |css|
        stylesheet_link_tag css
      }.join("\n")
    end

    def include_stylesheet(css)
      @page.extra_stylesheets << css
    end

    def include_javascript(js)
      @page.extra_javascripts << js
    end

    def will_paginate
      '<div class="pagination">' +
        '<span class="disabled prev_page">&laquo; Previous</span>' +
        '<span class="current">1</span>' +
        '<a href="/blogs?page=2" rel="next">2</a>' +
        '<a href="/blogs?page=2" class="next_page" rel="next">Next &raquo;</a>' +
      '</div>'
    end

  end

end

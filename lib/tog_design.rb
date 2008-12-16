include Nanoc::Helpers::LinkTo
include Nanoc::Helpers::Faker
include Nanoc::Helpers::Tog

def asset(asset_id)
  @assets.find { |asset| asset.asset_id == asset_id }
end

def page_is path
  @page.path == path
end

def image_tag(source)
  "<img src=\"#{asset(source).path}\" alt=\"\" />"
end


def page_title
  "toginstallation.com - #{@page.title}"
end

def meta_title
  meta_tag "title", page_title
end
def meta_description
  meta_tag "description", @page.description || ""
  
end
def meta_keywords
  meta_tag "keywords", @page.keywords || ""
end
def meta_author
  meta_tag "author", @page.author || ""
end

def meta_tag(name, content)
  "<meta name=\"#{name}\" content=\"#{content}\" />"
end

module DefaultPageContent
  extend ActiveSupport::Concern

  included do 
    before_filter :set_page_defaults
  end
 
  def set_page_defaults
    @page_title = "Mosassy Portfolio"
    @seo_keywords = "Felicia Wold Portfoltio"
  end
end
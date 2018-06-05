module DefaultPageContentConcern
  extend ActiveSupport::Concern

  included do
    before_action :set_page_defaults
  end

  def set_page_defaults
    @page_title = "Edward Kruljac | My Portfolio Website"
    @seo_keywords = "Edward Kruljac portfolio"
  end
end
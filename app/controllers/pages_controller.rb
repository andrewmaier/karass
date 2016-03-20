class PagesController < ApplicationController

  def index
    @body_class = "layout-index"
  end
  def settings
    @body_class = "layout-settings"
  end
    
end

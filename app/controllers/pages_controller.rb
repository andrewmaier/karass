class PagesController < ApplicationController

  def index
    @body_class = "layout-index"
    # @types = Type.all
    @topics = Topic.all
  end
  def settings
    @body_class = "layout-settings"
    # @types = Type.all
    @topics = Topic.all
    @stakeholders = Stakeholder.all
  end
  def results
    @body_class = "layout-results"
  end
    
end

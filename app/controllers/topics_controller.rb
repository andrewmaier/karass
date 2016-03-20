class TopicsController < ApplicationController

  def edit
    @body_class = "layout-topics-edit"
  end

  def new
    @body_class = "layout-topics-new"
    @topic = Topic.new
  end

  def create
  end
    
end

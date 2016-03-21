class TopicsController < ApplicationController

  def edit
    @body_class = "layout-topics-edit"
    @topic = Topic.find(params[:id])
  end

  def new
    @body_class = "layout-topics-new"
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to "/settings#topics"
    else
      render "new"
    end
  end

  def update
    @topic = Topic.find(params[:id])
    if @topic.update_attributes(topic_params)
      flash[:success] = "Topic updated."
      redirect_to "/settings#topics"
    else
      @body_class = "layout-topics-edit"
      render "edit"
    end
  end

  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy!
    redirect_to "/settings#topics", :notice => "Your topic has been deleted"
  end

  private

  def topic_params
    params.require(:topic).permit(:name)
  end

    
end

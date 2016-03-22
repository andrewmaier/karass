class TopicAssociationsController < ApplicationController

  def new
    @body_class = "layout-association-new"
    @topic_association = TopicAssociation.new
    @topics = Topic.all
    @stakeholder = Stakeholder.find(params[:topic_association][:stakeholder_id])
  end

  def create
    @topicAssociation = TopicAssociation.new(topic_association_params)
    if @topicAssociation.save
      redirect_to "/settings#associations"
    else
      redirect_to "/settings#associations"
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

  def topic_association_params
    params.require(:topic_association).permit(:stakeholder_id, :topic_id, :role)
  end

    
end

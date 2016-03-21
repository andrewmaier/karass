class StakeholdersController < ApplicationController

  def edit
    @body_class = "layout-stakeholders-edit"
    @stakeholder = Stakeholder.find(params[:id])
  end

  def new
    @body_class = "layout-stakeholders-new"
    @stakeholder = Stakeholder.new
  end

  def create
    @stakeholder = Stakeholder.new(stakeholder_params)
    if @stakeholder.save
      redirect_to "/settings#stakeholders"
    else
      render "new"
    end
  end

  def update
    @stakeholder = Stakeholder.find(params[:id])
    if @stakeholder.update_attributes(stakeholder_params)
      flash[:success] = "Stakeholder updated."
      redirect_to "/settings#stakeholders"
    else
      @body_class = "layout-stakeholders-edit"
      render "edit"
    end
  end

  def destroy
    @stakeholder = Stakeholder.find(params[:id])
    @stakeholder.destroy!
    redirect_to "/settings#stakeholders", :notice => "Your stakeholder has been deleted"
  end
   
 
  private

  def stakeholder_params
    params.require(:stakeholder).permit(:name, :email, :role)
  end


end

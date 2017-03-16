class CollaboratorsController < ApplicationController
  def index
    @wiki = Wiki.find(params[:wiki_id])
    @collaborators = @wiki.collaborators.all
  end

  def new
    @wiki = Wiki.find(params[:wiki_id])
    @collaborator = Collaborator.new
    @user = User.all
  end

  def create
    @collaborator = Collaborator.new(user_id: params[:user_id], wiki_id: params[:wiki_id])
    @wiki = Wiki.find(params[:wiki_id])

    if @collaborator.save
      flash[:notice] = "Collaborator was saved."
      redirect_to @wiki
    else
      flash.now[:alert] = "There was an error saving. Please try again."
      render :new
    end
  end
end

class CollaboratorsController < ApplicationController
  def index
    @wiki = Wiki.find(params[:wiki_id])
    @collaborators = @wiki.collaborators.all
  end

  def new
    @wiki = Wiki.find(params[:wiki_id])
  end

  def create
    wiki = Wiki.find(params[:wiki_id])
    @user = User.where('email LIKE ?', "%#{params[:search]}%").first

    if @collaborator.save
      flash[:notice] = "Collaborator was saved."
    else
      flash.now[:alert] = "There was an error saving. Please try again."
      render :new
    end
  end
end

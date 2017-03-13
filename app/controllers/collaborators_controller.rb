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
          collaborators = []
          wiki.collaborators.destroy_all
          if params[:collaborators]
              params[:collaborators].each do |c|
                  collaborators << {
                      wiki_id: wiki.id,
                      user_id: c
                  }
              end
              Collaborator.create(collaborators)
        end

          redirect_to wiki_collaborators_path(wiki)
      end
end

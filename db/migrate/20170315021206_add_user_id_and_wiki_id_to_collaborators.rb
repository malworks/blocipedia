class AddUserIdAndWikiIdToCollaborators < ActiveRecord::Migration[5.0]
  def change
    add_column :collaborators, :user_id, :integer
    add_column :collaborators, :wiki_id, :integer
  end
end

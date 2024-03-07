class RemoveDescriptionFromAuthor < ActiveRecord::Migration[6.1]
  def change
    remove_column :authors, :description, :string
  end
end

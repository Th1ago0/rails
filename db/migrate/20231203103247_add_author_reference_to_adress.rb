class AddAuthorReferenceToAdress < ActiveRecord::Migration[6.1]
  def change
    add_column :adresses, :author, :reference
  end
end

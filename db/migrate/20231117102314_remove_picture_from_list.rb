class RemovePictureFromList < ActiveRecord::Migration[7.1]
  def change
    remove_column :lists, :picture, :string
  end
end

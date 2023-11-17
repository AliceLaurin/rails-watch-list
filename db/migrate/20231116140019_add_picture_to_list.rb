class AddPictureToList < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :picture, :string
  end
end

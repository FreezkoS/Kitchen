class AddImage1ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image1, :string
  end
end

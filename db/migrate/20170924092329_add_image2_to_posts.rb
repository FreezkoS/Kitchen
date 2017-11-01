class AddImage2ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image2, :string
  end
end

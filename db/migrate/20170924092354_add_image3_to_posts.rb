class AddImage3ToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :image3, :string
  end
end

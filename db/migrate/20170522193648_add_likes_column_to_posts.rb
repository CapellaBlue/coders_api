class AddLikesColumnToPosts < ActiveRecord::Migration[5.0]
  def change
      add_column :posts, :likes, :integer
  end
end

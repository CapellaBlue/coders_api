class AddHlLikesColumnToPosts < ActiveRecord::Migration[5.0]
  def change
      add_column :posts, :hardLeftLikes, :integer
  end
end

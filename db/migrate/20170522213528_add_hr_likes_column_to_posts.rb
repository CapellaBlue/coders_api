class AddHrLikesColumnToPosts < ActiveRecord::Migration[5.0]
  def change
      add_column :posts, :hardRightLikes, :integer
  end
end

class AddCLikesColumnToPosts < ActiveRecord::Migration[5.0]
  def change
      add_column :posts, :centristLikes, :integer
  end
end

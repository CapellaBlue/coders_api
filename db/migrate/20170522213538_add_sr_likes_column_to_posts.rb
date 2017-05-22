class AddSrLikesColumnToPosts < ActiveRecord::Migration[5.0]
  def change
      add_column :posts, :softRightLikes, :integer
  end
end

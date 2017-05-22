class AddSlLikesColumnToPosts < ActiveRecord::Migration[5.0]
  def change
      add_column :posts, :softLeftLikes, :integer
  end
end

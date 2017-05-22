class AddILikesColumnToPosts < ActiveRecord::Migration[5.0]
  def change
      add_column :posts, :independentlikes, :integer
  end
end

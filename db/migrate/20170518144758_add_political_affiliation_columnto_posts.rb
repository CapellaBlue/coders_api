class AddPoliticalAffiliationColumntoPosts < ActiveRecord::Migration[5.0]
  def change
      add_column :posts, :political_affiliation, :string
  end
end

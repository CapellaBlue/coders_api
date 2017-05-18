class AddPoliticalAffiliationColumntoComments < ActiveRecord::Migration[5.0]
  def change
      add_column :comments, :political_affiliation, :string
  end
end

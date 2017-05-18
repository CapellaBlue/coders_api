class CreateDailyTopics < ActiveRecord::Migration[5.0]
  def change
    create_table :daily_topics do |t|
      t.string :content

      t.timestamps
    end
  end
end

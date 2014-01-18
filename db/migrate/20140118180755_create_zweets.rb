class CreateZweets < ActiveRecord::Migration
  def change
    create_table :zweets do |t|
      t.string :status

      t.timestamps
    end
  end
end

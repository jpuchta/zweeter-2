class CreateZweets < ActiveRecord::Migration
  def change
    create_table :zweets do |t|
      t.string :status
      t.references :zombie, index: true

      t.timestamps
    end
  end
end

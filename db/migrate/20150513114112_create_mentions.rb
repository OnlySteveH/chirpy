class CreateMentions < ActiveRecord::Migration
  def change
    create_table :mentions do |t|
      t.references :user, index: true, foreign_key: true
      t.references :chirp, index: true, foreign_key: true
      t.references :mentioned_by, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

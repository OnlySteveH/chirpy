class CreateChirps < ActiveRecord::Migration
  def change
    create_table :chirps do |t|
      t.string :status
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

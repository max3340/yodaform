class CreateLessons < ActiveRecord::Migration[6.0]
  def change
    create_table :lessons do |t|
      t.references :formation, null: false, foreign_key: true
      t.string :name
      t.string :details

      t.timestamps
    end
  end
end

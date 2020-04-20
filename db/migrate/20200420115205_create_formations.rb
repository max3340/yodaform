class CreateFormations < ActiveRecord::Migration[6.0]
  def change
    create_table :formations do |t|
      t.string :name
      t.string :start_date
      t.string :end_date
      t.string :details

      t.timestamps
    end
  end
end

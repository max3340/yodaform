class CreateFormationUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :formation_users do |t|
      t.integer :formation_id
      t.integer :user_id
      t.string :role

      t.timestamps
    end
  end
end

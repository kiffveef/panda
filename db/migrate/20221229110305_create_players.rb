class CreatePlayers < ActiveRecord::Migration[7.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.datetime :last_login
      t.datetime :registration_date
      t.boolean :suspend, default: false, null: false

      t.timestamps
    end
  end
end

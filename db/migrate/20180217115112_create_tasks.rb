class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false, limit: 20
      t.string :description, null: false, limit: 250

      t.timestamps
    end
  end
end

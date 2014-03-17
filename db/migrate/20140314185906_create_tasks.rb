class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :thing_to_do
      t.boolean :completed, default: false
      t.timestamps
    end
  end
end
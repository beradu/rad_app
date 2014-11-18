class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :user, index: true
      t.boolean :log
      t.text :description
      t.string :title
      t.timestamp :log_time

      t.timestamps
    end
  end
end

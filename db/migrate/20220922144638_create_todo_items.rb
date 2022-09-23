class CreateTodoItems < ActiveRecord::Migration[7.0]
  def change
    create_table :todo_items do |t|
      t.string :title
      t.text :description
      t.date :due_date
      t.string :priority

      t.timestamps
    end
  end
end

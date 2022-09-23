class AddCheckToTodo < ActiveRecord::Migration[7.0]
  def change
    add_column :todo_items, :check, :boolean, default: false
  end
end

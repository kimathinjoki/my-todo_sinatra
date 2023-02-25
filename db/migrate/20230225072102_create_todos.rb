class CreateTodos < ActiveRecord::Migration[7.0]
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.string :description, null: false
      t.datetime :due_date
      t.datetime :createdAt
      t.integer :status, default: 0, null: false
    end
  end
end

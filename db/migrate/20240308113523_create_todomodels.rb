class CreateTodomodels < ActiveRecord::Migration[7.1]
  def change
    create_table :todomodels do |t|
      t.string :title
      t.string :type
      t.string :day

      t.timestamps
    end
  end
end

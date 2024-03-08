class RemoveTypeFromTodomodel < ActiveRecord::Migration[7.1]
  def change
    remove_column :todomodels, :type, :string
  end
end

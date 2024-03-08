class AddKindToTodomodel < ActiveRecord::Migration[7.1]
  def change
    add_column :todomodels, :kind, :string
  end
end

class AddUrlToTodomodel < ActiveRecord::Migration[7.1]
  def change
    add_column :todomodels, :url, :string
  end
end

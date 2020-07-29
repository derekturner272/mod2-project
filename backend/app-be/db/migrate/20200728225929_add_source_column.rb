class AddSourceColumn < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :source, :string
  end
end

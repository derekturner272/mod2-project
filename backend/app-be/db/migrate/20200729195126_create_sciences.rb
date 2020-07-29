class CreateSciences < ActiveRecord::Migration[6.0]
  def change
    create_table :sciences do |t|
      t.string :title
      t.string :image
      t.string :url
      t.string :source

      t.timestamps
    end
  end
end

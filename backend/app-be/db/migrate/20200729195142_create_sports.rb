class CreateSports < ActiveRecord::Migration[6.0]
  def change
    create_table :sports do |t|
      t.string :title
      t.string :image
      t.string :url
      t.string :source

      t.timestamps
    end
  end
end

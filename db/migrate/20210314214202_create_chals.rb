class CreateChals < ActiveRecord::Migration[6.1]
  def change
    create_table :chals do |t|
      t.string :name

      t.timestamps
    end
  end
end

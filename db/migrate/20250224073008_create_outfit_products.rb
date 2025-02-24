class CreateOutfitProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :outfit_products do |t|
      t.references :outfit, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true

      t.timestamps
    end
  end
end

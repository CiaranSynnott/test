class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.string :category
      t.string :description
      t.decimal :cost_price
      t.decimal :selling_price
      t.string :image_url
      t.string :brand
      t.string :supplier
      t.integer :qty_in_stock
      t.string :order_no
      t.string :size
      t.string :features
      t.string :specification
      t.string :rider_position
      t.string :rider_profile

      t.timestamps null: false
    end
  end
end

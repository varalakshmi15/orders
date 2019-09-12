class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.string :name
      t.decimal :price

      t.timestamps
    end

    Item.create(name: 'Horlicks', price: '45.0')
    Item.create(name: 'Milk', price: '15.0')
    Item.create(name: 'Pencil', price: '2')
    Item.create(name: 'Pen', price: '5')
    Item.create(name: 'Book', price: '10.0')
    Item.create(name: 'Bag', price: '99.0')
    Item.create(name: 'Soap', price: '15')
    Item.create(name: 'Tea Powder', price: '45.0')
    Item.create(name: 'Oil', price: '56')
    Item.create(name: 'Sticks', price: '65')
    Item.create(name: 'Box', price: '65.0')
    Item.create(name: 'Vaseline', price: '15.0')
    Item.create(name: 'Bottle', price: '24.0')
    Item.create(name: 'Nail Polish', price: '20.0')
    Item.create(name: 'Mint', price: '5.0')
    Item.create(name: 'Biscuit', price: '10.0')
  end
end

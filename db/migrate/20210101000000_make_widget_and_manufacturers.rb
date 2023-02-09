# frozen_string_literal: true

class MakeWidgetAndManufacturers < ActiveRecord::Migration[6.1]
  def change
    create_table :widget_statuses,
      comment: 'List of definitive widget statuses' do |t|
        t.text :name, null: false,
          comment: 'The name of statuts'
        t.timestamps null: false
      end

    add_index :widget_statuses, :name, unique: true,
      comment: 'No two widget statuses should have the same name'
    create_table :addresses,
      comment: 'Addresses for manufacturer' do |t|
        t.text :street, null: false,
          comment: 'Street part of the address'
        t.text :zip, null: false,
          comment: 'Postal or zip code of this address'

        t.timestamps null: false
      end

    create_table :manufacturers,
      comment: 'Makers of the widgtes we sell' do |t|
        t.text :name, null: false,
          comment: 'Name of this manufacturer'

        t.references :address, null: false,
          foreign_key: true,
          comment: 'The address of this manufacturer'

        t.timestamps null: false
      end

    add_index :manufacturers, :name, unique: true

    create_table :widgets,
      comment: 'The stuff we sell' do |t|
        t.text :name, null: false,
          comment: 'Name of this widget'

        t.integer :price_cents, null: false,
          comment: 'Price of this widget in cents'

        t.references :widget_status, null: false,
          foreign_key: true,
          comment: 'The current status of this widget'

        t.references :manufacturer, null: false,
          foreign_key: true,
          comment: 'The make of this widget'

        t.timestamps null: false
      end

    add_index :widgets, %i[name manufacturer_id],
      unique: true,
      comment: 'No manufacturer con have two widgets with ' \
      'the same name'
    add_check_constraint(
      :widgets,
      'price_cents > 0',
      name: 'price_must_be_positive'
    )
  end
end

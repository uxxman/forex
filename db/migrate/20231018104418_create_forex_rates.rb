class CreateForexRates < ActiveRecord::Migration[7.1]
  def change
    create_table :rates do |t|
      t.string :currency,   null: false, limit: 5
      t.float  :multiplier, null: false

      t.timestamps
    end

    add_index :rates, :currency, unique: true
  end
end

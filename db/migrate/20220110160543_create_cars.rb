class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.string :state, default: 'parked'
      t.belongs_to :user
      t.timestamps
    end
  end
end

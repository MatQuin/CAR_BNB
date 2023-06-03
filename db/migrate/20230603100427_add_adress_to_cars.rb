class AddAdressToCars < ActiveRecord::Migration[7.0]
  def change
    add_column :cars, :address, :string
  end
end

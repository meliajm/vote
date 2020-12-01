class AddColumnsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :address1, :string,
    add_column :users, :address2, :string,
    add_column :users, :city, :string,
    add_column :users, :zip, :string,
    add_column :users, :state, :string,
    add_column :users, :message, :text,
    add_column :users, :canVolunteer, :boolean
  end
end

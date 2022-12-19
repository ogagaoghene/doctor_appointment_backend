class AddColumnsToDoctors < ActiveRecord::Migration[7.0]
  def change
    add_column :doctors, :email, :string
    add_column :doctors, :phonenumber, :string
    add_column :doctors, :picture, :string
    add_column :doctors, :location, :string
    add_column :doctors, :years_of_experience, :integer
  end
end

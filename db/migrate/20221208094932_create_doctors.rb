# frozen_string_literal: true

class CreateDoctors < ActiveRecord::Migration[7.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.string :specialty
      t.integer :fee

      t.timestamps
    end
  end
end

# frozen_string_literal: true

class UserRefDoctors < ActiveRecord::Migration[7.0]
  def change
    add_reference :doctors, :user, foreign_key: true
  end
end

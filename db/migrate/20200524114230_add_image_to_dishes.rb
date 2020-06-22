# frozen_string_literal: true

class AddImageToDishes < ActiveRecord::Migration[5.2]
  def change
    add_column :dishes, :image, :string
  end
end

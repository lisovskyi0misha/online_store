class AddPostersToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :posters, :product, null: false, foreign_key: true
  end
end

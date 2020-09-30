class CreatePromos < ActiveRecord::Migration[6.0]
  def change
    create_table :promos do |t|
      t.string :title
      t.string :school_code
      t.string :slug
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

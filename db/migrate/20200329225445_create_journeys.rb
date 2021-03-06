class CreateJourneys < ActiveRecord::Migration[6.0]
  def change
    create_table :journeys do |t|
      t.references :user, null: false, foreign_key: true
      t.string :toAddress
      t.string :string
      t.string :fromAddress
      t.integer :distance
      t.references :package, null: false, foreign_key: true

      t.timestamps
    end
  end
end

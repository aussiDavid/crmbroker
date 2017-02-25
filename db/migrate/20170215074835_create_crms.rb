class CreateCrms < ActiveRecord::Migration[5.0]
  def change
    create_table :crms do |t|
      t.string :name
      t.belongs_to :account

      t.timestamps
    end

    add_index :crms, [:name, :account_id], unique: true
  end
end

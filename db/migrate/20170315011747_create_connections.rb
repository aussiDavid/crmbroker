class CreateConnections < ActiveRecord::Migration[5.0]
  def change
    create_table :connections do |t|
      t.belongs_to :account, index: true
      t.belongs_to :crm, index: true
      t.string :token

      t.timestamps
    end
  end
end

class CreateLeases < ActiveRecord::Migration[6.1]
  def change
    create_table :leases do |t|
      t.string :rent
      t.belongs_to :tenant, foreign_key: true
      t.belongs_to :aparment, foreign_key: true

      t.timestamps
    end
  end
end

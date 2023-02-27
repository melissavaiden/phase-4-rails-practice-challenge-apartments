class CreateAparments < ActiveRecord::Migration[6.1]
  def change
    create_table :aparments do |t|
      t.integer :number

      t.timestamps
    end
  end
end

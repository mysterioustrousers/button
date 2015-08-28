class CreateNeedles < ActiveRecord::Migration
  def change
    create_table :needles do |t|
      t.integer :sharpness
      t.integer :length

      t.timestamps
    end
  end
end

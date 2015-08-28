class CreateStitches < ActiveRecord::Migration
  def change
    create_table :stitches do |t|
      t.string :thread_color
      t.string :length

      t.timestamps
    end
  end
end

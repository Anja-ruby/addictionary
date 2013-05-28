class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :polskie
      t.string :angielskie

      t.timestamps
    end
  end
end

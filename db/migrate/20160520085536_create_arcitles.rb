class CreateArcitles < ActiveRecord::Migration
  def change
    create_table :arcitles do |t|
      t.string :title

      t.timestamps null: false
    end
  end
end

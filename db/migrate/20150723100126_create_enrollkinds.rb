class CreateEnrollkinds < ActiveRecord::Migration
  def change
    create_table :enrollkinds do |t|

      t.string :studykinds

      t.timestamps null: false
    end
  end
end

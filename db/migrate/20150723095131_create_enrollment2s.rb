class CreateEnrollment2s < ActiveRecord::Migration
  def change
    create_table :enrollment2s do |t|

      t.string :studykinds
      t.string :grouptitle
      t.text :groupcontent
      t.string :groupauthor
      t.string :grouppw

      t.timestamps null: false
    end
  end
end

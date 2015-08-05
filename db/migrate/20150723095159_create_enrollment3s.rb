class CreateEnrollment3s < ActiveRecord::Migration
  def change
    create_table :enrollment3s do |t|

      t.string :studykinds
      t.string :grouptitle
      t.text :groupcontent
      t.string :groupauthor
      t.string :grouppw

      t.timestamps null: false
    end
  end
end

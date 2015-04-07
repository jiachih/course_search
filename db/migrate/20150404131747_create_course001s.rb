class CreateCourse001s < ActiveRecord::Migration
  def change
    create_table :course001s do |t|
      t.string :name
      t.string :teacher
      t.string :classroom
      t.string :time
      t.string :credit

      t.timestamps null: false
    end
  end
end

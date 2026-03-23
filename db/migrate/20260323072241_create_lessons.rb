class CreateLessons < ActiveRecord::Migration[8.1]
  def change
    create_table :lessons do |t|
      t.string :title
      t.string :description
      t.date :date

      t.timestamps
    end
  end
end

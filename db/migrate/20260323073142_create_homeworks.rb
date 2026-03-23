class CreateHomeworks < ActiveRecord::Migration[8.1]
  def change
    create_table :homeworks do |t|
      t.references :lesson, null: false, foreign_key: true
      t.string :title
      t.text :content
      t.string :description

      t.timestamps
    end
  end
end

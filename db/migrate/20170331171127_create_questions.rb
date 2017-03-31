class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :quality, null: false
      t.boolean :coffee, null: false
      t.boolean :booze, null: false
      t.boolean :workout, null: false
      t.date :date, null: false
      t.text :comments

      t.timestamps
    end
  end
end

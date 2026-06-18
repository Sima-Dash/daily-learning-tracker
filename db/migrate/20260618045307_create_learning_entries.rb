class CreateLearningEntries < ActiveRecord::Migration[8.1]
  def change
    create_table :learning_entries do |t|
      t.date :date
      t.string :topic
      t.integer :hours
      t.text :notes

      t.timestamps
    end
  end
end

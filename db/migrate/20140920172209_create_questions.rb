class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :type
      t.string :category
      t.string :question
      t.string :answer

      t.timestamps
    end
  end
end

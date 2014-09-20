class AddFalseAnswersToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :false_answers, :string
  end
end

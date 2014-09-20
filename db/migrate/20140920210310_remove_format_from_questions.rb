class RemoveFormatFromQuestions < ActiveRecord::Migration
  def change
    remove_column :questions, :format, :string
  end
end

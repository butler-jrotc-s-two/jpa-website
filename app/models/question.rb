class Question < ActiveRecord::Base
  belongs_to :category

  before_save :validate_selects
  
  def validate_selects
    if self.category_id == 0
     return false
    end
  end

  validates :category_id, presence: true
  validates :question, presence: true
  validates :answer, presence: true
  validates :false_answers, presence: true

end

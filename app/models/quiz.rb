class Quiz < ApplicationRecord
  validates :question, {presence: true}
  validates :answer_1, {presence: true}
  validates :answer_2, {presence: true}
  
  has_many :answers

end

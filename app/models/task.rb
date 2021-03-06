class Task < ApplicationRecord
  
  # associations
  belongs_to :user

  # validations
  validates_presence_of :title,
                        :user_id
end

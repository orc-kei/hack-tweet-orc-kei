class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :hack
  validates :content,    presence: true

end

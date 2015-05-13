class Mention < ActiveRecord::Base
  belongs_to :user
  belongs_to :chirp
  belongs_to :mentioned_by, class_name = "User"

  validates :user, :chirp, :mentioned_by, presence: true
end

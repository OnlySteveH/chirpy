class Chirp < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :status, length: { in: 1..141 }

  #def parse_mentions
  #	mentioned_matches = status.scan(/@([^\s]+)/)
  #	mentioned_matches.each do [match]
  #		mentioned_slug = match[0]
  #		mentioned_user = User.find_by_slug(mentioned_slug)

end

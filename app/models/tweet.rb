class Tweet < ActiveRecord::Base
    belongs_to :user
    has_many :tweet_tags
    has_many :tweets, through: :tweet_tags
    
    validates :message, presence: true, length: { maximum: 140, too_long: "You know its only 140 right "}
end

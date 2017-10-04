class Tweet < ActiveRecord::Base
    belongs_to :user
    
    validates :message, presence: true, length: { maximum: 140, too_long: "You know its only 140 right "}
end

class Tweet < ActiveRecord::Base
    belongs_to :user
    has_many :tweet_tags
    has_many :tweets, through: :tweet_tags
    
    before_validation :link_check
    
    validates :message, presence: true, length: { maximum: 140, too_long: "You know its only 140 right "}
    
    private 
    
    def link_check
        if self.message.include?("http://")
            array = self.message.split 
            
            index = array.map { |word| word.include? "http://" }.index(true)
            
            self.link = array[index]
            
            if array[index].length > 23
                array[index] = "#{array[index][0...20]}..."
                
                
            end
            self.message = array.join(" ")
        end
        
        def apply_link
            array =self.message.split
            index = array.map { |word| word.clude?("http://") } .index(ture)
            url = array[index]
            
            array[index] = "<a href='#{self.link}' target='_blank'#{url}</a>"
            
            self.message =array.join(" ")
            
        end
        
    end

end

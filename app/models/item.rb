class Item < ActiveRecord::Base
    
    def self.search(search)
        where("description LIKE ?", "%#{search}%")
    end
end

class Eatery < ActiveRecord::Base
    belongs_to :category
    def self.search(search)
        if search
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end
end

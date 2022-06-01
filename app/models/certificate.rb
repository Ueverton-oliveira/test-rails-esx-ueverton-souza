class Certificate < ApplicationRecord   
    validates :url, presence: true
    validates :status, presence: true
end

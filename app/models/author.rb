class Author < ApplicationRecord
    has_one_attached :avatar
    validates :first_name, length: {minimum: 2,maximum: 30}
    validates :last_name, presence: true, length: {minimum: 2,maximum: 30}
    validates :description, allow_nil: true, length: {maximum: 200}
    
    after_validation :capitalize_first_name, if: Proc.new { |a| a.first_name.present? }, on: :create
    
    has_one :adress, dependent: :destroy
    has_many :posts
    
    private
    def capitalize_first_name
        self.first_name = first_name.capitalize
    end
end

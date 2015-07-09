class Album < ActiveRecord::Base
  before_save :set_url_key
  
  belongs_to :user
  belongs_to :portfolio
  has_many :photos
  
  private 
  def set_url_key
    unless self.url_key.nil? 
      self.url_key = "#{self.title.downcase.gsub(' ','-')}"
    end
  end 
  
end

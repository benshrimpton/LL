class Portfolio < ActiveRecord::Base
  before_save :set_url_key
  
  has_many :photos
  has_many :albums
  
  private 
  def set_url_key
    unless self.url_key.nil? 
      self.url_key = "#{self.title.downcase.gsub(' ','-')}"
    end
  end 
end

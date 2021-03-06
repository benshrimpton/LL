class Album < ActiveRecord::Base

  before_save :set_url_key

  belongs_to :user

  belongs_to :album_photos

  has_many :album_photos
  has_many :photos , :through  => :album_photos

  # has_many :album_portfolios

  # has_many :portfolios, :through  => :album_portfolios

  belongs_to :nav

  private
  def set_url_key
    unless self.url_key.nil?
      self.url_key = "#{self.title.downcase.gsub(' ','-')}"
    end
  end

end

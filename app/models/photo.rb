class Photo < ActiveRecord::Base

  belongs_to :album
  belongs_to :portfolio
  belongs_to :user

  attached_file :image, :styles => { :medium => "300x300>", :thumb => "150x110#" }, :default_url => "http://placehold.it/200x200"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates_presence_of :image
  
  accepts_nested_attributes_for :user, :portfolio, :album
  
end

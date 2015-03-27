class Pin < ActiveRecord::Base
	belongs_to :user
	has_attached_file :image, :styles => "300x300", :thumb => "100x100"
	validates_attachment :image, :content_type => { :content_type => ["image/jpeg", "image/gif", "image/png"] }
	attr_accessor :image_file_name
end

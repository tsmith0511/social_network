class Profile
  include Mongoid::Document
  include Mongoid::Paperclip

  belongs_to :user

	has_mongoid_attached_file :image
	validates_attachment_file_name :image, :matches => [/png\Z/, /jpe?g\Z/]
  
  field :firstname, type: String
  field :lastname, type: String
  field :age, type: Integer
  field :gender, type: String
end

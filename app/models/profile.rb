class Profile
  include Mongoid::Document
  field :firstname, type: String
  field :lastname, type: String
  field :age, type: Integer
  field :gender, type: String
end

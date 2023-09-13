class Comment < ApplicationRecord
  belongs_to :article
  validate_presense_of :body , message: "Comment field not be empty !!!"
  #Proc.new { | user, data |"#{data[:attribute]} is needed for all registrations!" } 
end

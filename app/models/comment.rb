class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates_presence_of :user  #if you want an anonymous to comment. You need to comment this line.
end 

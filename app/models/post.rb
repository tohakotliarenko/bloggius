class Post < ActiveRecord::Base
  attr_accessible :text, :title
  validates :text, :title, presence: true, :length => { :minimum => 3 }
end

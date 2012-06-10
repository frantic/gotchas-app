class Gotcha < ActiveRecord::Base
  attr_accessible :content, :tags
  validates_presence_of :content
end

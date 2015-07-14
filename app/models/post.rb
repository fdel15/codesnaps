class Post < ActiveRecord::Base
  include PublicActivity::Model

  belongs_to :user
  validates_presence_of :user_id, :content

end

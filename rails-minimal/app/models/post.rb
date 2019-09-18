class Post
  include Mongoid::Document
  field :title, type: String
  field :body, type: String

  has_many :comments, dependent: :destroy
end

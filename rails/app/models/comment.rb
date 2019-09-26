class Comment
  include Mongoid::Document
  field :name, type: String
  field :message, type: String

  belongs_to :post, dependent: :destroy
end

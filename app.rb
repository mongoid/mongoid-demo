require 'sinatra'
require 'mongoid'

# Configure Mongoid by creating config/mongoid.yml. The format of this file
# is documented at
# https://docs.mongodb.com/mongoid/master/tutorials/mongoid-configuration/#anatomy-of-a-mongoid-config
Mongoid.load!(File.join(File.dirname(__FILE__), 'config', 'mongoid.yml'))

# Define models

class Post
  include Mongoid::Document

  field :title, type: String
  field :body, type: String

  has_many :comments
end

class Comment
  include Mongoid::Document

  field :name, type: String
  field :message, type: String

  belongs_to :post
end

# Define routes

get '/posts' do
  Post.all.to_json
end

post '/posts' do
  post = Post.create!(params[:post])
  post.to_json
end

get '/posts/:post_id' do |post_id|
  post = Post.find(post_id)
  post.attributes.merge(
    comments: post.comments,
  ).to_json
end

post '/posts/:post_id/comments' do |post_id|
  post = Post.find(post_id)
  comment = post.comments.create!(params[:comment])
  {}.to_json
end

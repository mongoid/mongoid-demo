json.extract! comment, :id, :name, :message, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)

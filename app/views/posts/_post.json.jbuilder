json.extract! post, :id, :comment, :post_date, :author, :created_at, :updated_at
json.url post_url(post, format: :json)

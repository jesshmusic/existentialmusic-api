json.extract! post, :id, :title, :subtitle, :spotify_url, :anchor_url, :excerpt, :published_at, :created_at, :updated_at
json.url post_url(post, format: :json)

json.extract! episode, :id, :title, :description, :url, :created_at, :updated_at
json.url episode_url(episode, format: :json)

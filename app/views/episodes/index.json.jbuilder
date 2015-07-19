json.array!(@episodes) do |episode|
  json.extract! episode, :id, :name, :video_id
  json.url episode_url(episode, format: :json)
end

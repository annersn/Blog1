json.array!(@posts) do |post|
  json.extract! post, :id, :title, :content, :owner
  json.url post_url(post, format: :json)
end

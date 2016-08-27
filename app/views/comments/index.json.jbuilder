json.array!(@comments) do |comment|
  json.extract! comment, :id, :owner, :email, :comment
  json.url comment_url(comment, format: :json)
end

# Дублируется в comments#create, при изменении обязательно проверять соответствие!
json.array!(@comments) do |comment|
  json.extract! comment, :id, :title, :content, :user_id, :post_id
  json.user { json.email comment.user.email }
end

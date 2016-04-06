json.array! @users.each do |user|
  json.id user.id
  json.firstName user.first_name
  json.lastName user.last_name
  json.email user.email
  json.image user.image
  json.imageSlug user.image_slug
  json.motto user.motto
end
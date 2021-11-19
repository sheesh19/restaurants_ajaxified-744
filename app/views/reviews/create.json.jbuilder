# if our review is saved
# - update the review div with the newest review & display in html
# - clear our simple_form with a new simple_form
# else
# - re render our form with the review with the errors

if @review.persisted?
  json.form json.partial!('reviews/form.html.erb', restaurant: @restaurant, review: Review.new)
  json.inserted_item json.partial!('restaurants/review.html.erb', review: @review)
else
  json.form json.partial!('reviews/form.html.erb', restaurant: @restaurant, review: @review)
end

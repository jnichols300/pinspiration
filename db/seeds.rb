require 'active_record'


# require_relative '../../models/pin'
# require_relative './pin_data.rb'


Pin.destroy_all
Board.destroy_all

# pin_data = get_pin_data()
​
# pins = Pin.create ([
# 	{title: "Christmas", description: "hajububu", image_url: "http://placezombie.com/400x300"},
# 	{title: "Thanksgiving", image_url: "http://placezombie.com/400x300"},
# 	{title: "Easter", image_url: "http://placezombie.com/400x300"},
# 	{title: "Halloween", image_url: "http://placezombie.com/400x300"},
# 	{title: "Cinco de Mayo", image_url: "http://placezombie.com/400x300"},
# 	{title: "Labor Day", image_url: "http://placezombie.com/400x300"}
# ])
​
# pins.each do |pin|
#   Pin.create!({
#     title:        pin[:title],
#     description:   pin[:description],
#     image_url:      pin[:image_url]
#   })
# end

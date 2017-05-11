require 'sinatra'
require 'erb'
set :views, File.dirname(__FILE__) + '/views'
set :public, File.dirname(__FILE__) + '/static'

QUESTIONS = [
  "What is your favourite food and can you cook it?",
  "How was your week?",
  "What are your hopes for the next month?",
  "How do you hope your life will look in one year from now?",
  "Is there one thing you can do in the next month to make that hope a reality?",
  "Is there one thing you would like help or encouragement with this month?"
]

ROSTI_STEPS = [
  "Peel the potatoes and the onions.",
  "Grate the potatoes and the onions into a bowl.",
  "Put the grated potatoes and onions onto a clean tea towel, fold it around and squeeze to remove as much moisture as possible. Turn on the griddle.",
  "Put everything in one bowl, then add flour and eggs and season with salt and black pepper. Mix until evenly combined then divide into equal portions.",
  "Add two tbsp of oil to the hot griddle. Place one portion of grated potato and, using the back of a spoon, gently push down. Fry the pancakes for 3-4 minutes on both side.",
  "Season with salt and enjoy your potato pancakes!"
]

SALAD_STEPS = [
  "Peel the cucumbers.",
  "Dice the tomatoes, green pepper and cucumbers into small pieces.",
  "Chop the mint and the parsley.",
  "Add all vegetables and herbs in a bowl and mix well.",
  "Add lemon juice, olive oil and salt to taste.",
  "Enjoy your Syrian salad!"
]

get '/rosti' do
  @questions = QUESTIONS
  @steps = ROSTI_STEPS
  erb :index
end

get '/salad' do
  @questions = QUESTIONS
  @steps = SALAD_STEPS
  erb :index
end

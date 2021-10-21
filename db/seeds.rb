# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

general = Channel.create(name: "#general")
random = Channel.create(name: "#random")
best_kills = Channel.create(name: "#best-kills")
chucky = User.create(username: "Chucky")
freddy = User.create(username: "Freddy")
hellraiser = User.create(username: "Hellraiser")
jason = User.create(username: "Jason")
ghostface = User.create(username: "Ghostface")
leatherface = User.create(username: "ChainsawManAggieFan")

general.messages.create(message: "This is for relevant information only! Memes, murders, etc. should be kept to other channels!", user: chucky)
general.messages.create(message: "Lol first post!", user: freddy)
general.messages.create(message: "*Chucky has unfriended Freddy*", user: chucky)

random.messages.create(message: "Gonna start going after coding school students. Any tips?", user: freddy)
random.messages.create(message: "They're all going to be dreaming about coding, is it really worth it?", user: chucky)
random.messages.create(message: "Lol Freddy vs JSON", user: jason)
random.messages.create(message: "They understand that suffering is a form of pleasure.", user: hellraiser)

best_kills.messages.create(message: "Two words: Garage Door.", user: ghostface)
best_kills.messages.create(message: "Hey Freddy, heard your students wanted to learn about hooks.", user: hellraiser)
best_kills.messages.create(message: "Lol heard", user: leatherface)

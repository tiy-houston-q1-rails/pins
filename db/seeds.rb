vitaly = User.create username: "vitaly", password: "12345"
leroy = User.create username: "its-leh-roy", password: "54321"

categories = %w(sports nightlife animals food nature cats fashion technics transport people)


10.times do
  user = [vitaly, leroy].sample
  user.pins.create remote_photo_url: "http://lorempixel.com/500/500/#{categories.sample}/"
end

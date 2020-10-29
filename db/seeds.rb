# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


30.times{Playlist.create(name: Faker::Book.title, band_id: Band.all.sample.id)}

50.times{Song.create({artist: Faker::Music.band, album: Faker::Music.album, name: Faker::TvShows::NewGirl.quote, release_year: Faker::Vehicle.year})}

100.times{PlaylistAddition.create({song_id: Song.all.sample.id, playlist_id: Playlist.all.sample.id})}
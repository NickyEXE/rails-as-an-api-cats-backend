# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = [
  {
    "name": "Bombalurina",
    "actor": "Taylor Swift",
    "description": "Femme fatale, introduces Macavity at the Jellicle Ball.",
    "image": "https://www.gannett-cdn.com/presto/2019/12/18/USAT/bfd9983f-dcd6-46a0-93c1-aabad1226e58-XXX_078_swift.JPG",
    "team_name": "Macaviteam"
  },
  {
    "name": "Macavity",
    "actor": "Idris Elba",
    "description": "Magical, nefarious, kidnaps Old Deuteronomy at the Jellicle Ball",
    "image": "https://vignette.wikia.nocookie.net/villains/images/f/f2/646646464-2.jpg",
    "team_name": "Macaviteam"
  },
  {
    "name": "Skimbleshanks",
    "actor": "Steven McRae",
    "description": "The RAILWAY CAT, THE CAT ON THE RAILWAY TRAIN",
    "image": "https://vignette.wikia.nocookie.net/catsmusical/images/1/1a/Skimbleshanks_Movie_2019.png/revision/latest?cb=20191221210538",
    "team_name": "Jellicle Ball Contestant"
  },
  {
    "name": "Munkustrap",
    "actor": "Robbie Fairchild",
    "description": "The narrator cat, introduces many of the other Jellicles.",
    "image": "https://vignette.wikia.nocookie.net/catsmusical/images/f/fb/Munkustrap_Robbie_Fairchild.png",
    "team_name": "Jellicle"
  },
  {
    "name": "Grizabella",
    "actor": "Jennifer Hudson",
    "description": "The Glamour Cat, now shunned by the Jellicles and wishing for her former life. Sings Memory.",
    "image": "https://vignette.wikia.nocookie.net/catsmusical/images/b/bb/Grizabella_Jennifer_Hudson_Memory_Prelude_1.png",
    "team_name": "Unaffiliated"
  },
  {
    "name": "Mr. Mistoffelees",
    "actor": "Laurie Davidson",
    "description": "The Magical Cat!",
    "image":  "https://vignette.wikia.nocookie.net/catsmusical/images/c/c9/Mistoffelees_laurie_davidson_movie_2019_02.png",
    "team_name": "Jellicle"
  },
  {
    "name": "The Rum Tum Tugger",
    "actor": "Jason Derulo",
    "description": "The Rum Tum Tugger is a curious cat.",
    "image": "https://vignette.wikia.nocookie.net/catsmusical/images/0/0e/Rum_tum_tugger_jason_derulo_movie_2019_01.png/",
    "team_name": "Jellicle Ball Contestant"
  }
]

cats.each do |cat|
  Cat.create(cat)
end

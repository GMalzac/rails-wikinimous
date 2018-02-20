
10.times { Article.new(title: Faker::Superhero.name, content: Faker::ChuckNorris.fact).save }


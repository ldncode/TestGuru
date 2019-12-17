# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user, user2 = User.create([{ username: Ivan}, { username: Vasiliy}])

html, ruby, swift = Category.create([{ title: 'HTML'}, { title: 'Ruby'},{ title: 'Swift'}])

html_test, ruby_test, swift_test = Test.create(
    [
        { title: HTML, level: 1},
        { title: Ruby, level: 2},
        { title: Swift, level: 3}
    ]
)

q1, q2, q3 = Question.create(
    [
        { body: 'Является ли HTML языком программирования?' },
        { body: 'Лучший фреймворк языка Ruby?' },
        { body: 'Какие приложения можно писать с помощью языка  Swift?' }
    ]
)

replies = Replies.create(
    [
        { body: 'Да', correct: false },
        { body: 'Нет, это язык разметки', correct: true },

        { body: 'Sinatra', correct: false },
        { body: 'Ruby on Rails', correct: true },

        { body: 'Десктопные приложения', correct: false },
        { body: 'Мобильные приложения', correct: false }
    ]
)




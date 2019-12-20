# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user, user2, user3 = User.create(
    [
        { username: 'Ivan', password: 'ivan' },
        { username: 'Vasiliy', password: 'vasiliy' },
        { username: 'Mariya', password: 'mariya' }
    ]
)

html, ruby, swift = Category.create([{ title: 'Html'}, { title: 'Ruby'},{ title: 'Swift'}])

html_test, ruby_test, swift_test = Test.create(
    [
        { title: 'Html', level: 1, category_id: html.id, user_id: user.id },
        { title: 'Ruby', level: 2, category_id: ruby.id, user_id: user2.id },
        { title: 'Swift', level: 3, category_id: swift.id, user_id: user3.id }
    ]
)

q1, q2, q3 = Question.create(
    [
        { body: 'Является ли HTML языком программирования?', test_id: html_test},
        { body: 'Лучший фреймворк языка Ruby?', test_id: ruby_test },
        { body: 'Какие приложения можно писать с помощью языка  Swift?', test_id: swift_test}
    ]
)

answers = Answer.create(
    [
        { body: 'Да', question_id: q1, correct: false },
        { body: 'Нет, это язык разметки',  question_id: q1, correct: true },

        { body: 'Sinatra', question_id: q2, correct: false },
        { body: 'Ruby on Rails', question_id: q2, correct: true },

        { body: 'Десктопные приложения',  question_id: q3, correct: false },
        { body: 'Мобильные приложения', question_id: q3, correct: true }
    ]
)




Back-end api на Ruby on Rails для ember-front (https://github.com/nbnp11/ember_front)

## Запуск ##
rails db:create
rails db:seed
rails s

## Использование ##
1. Запустить сервер ember (https://github.com/nbnp11/ember_front/blob/master/README.md)
2. Запустить сервер rails
3. Проверить тесты rspec
  3.1 rails db:rest
  3.2 rails db:seed RAILS_ENV=test
  3.3 rspec
4. Найти все офисные блоки от 150 до 300 м2 включительно, находящиеся на 1, 8 или 10 этажах,
сдающиеся в аренду по цене не более $5000, в зданиях класса «А» на пресненской набережной
  4.1 Что бы получить ORM запрос
      localhost:3000/get_orm
  4.2 Что бы получить SQL запрос
      localhost:3000/get_sql
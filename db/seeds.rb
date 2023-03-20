# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Genreテーブルの中身作成
Genre.create!([
    {name: '1文字ずつ練習'},
    {name: '都道府県'},
    {name: '冠婚葬祭'},
    {name: '例文集'}
  ])
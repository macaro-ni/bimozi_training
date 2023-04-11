Letter.seed(
  # 全部登録する時にidをつける（そうしないとrails db:seed_fuコマンドを実行するごとにデータが被る）
  {
    id:1,
    genre_id: 1,
    name: 'あ'
  },
  {
    id: 2,
    genre_id: 1,
    name: 'い'
  },
  {
    id: 3,
    genre_id: 1,
    name: 'う'
  },
  {
    id: 4,
    genre_id: 1,
    name: 'え'
  },
  {
    id: 5,
    genre_id: 1,
    name: 'お'
  },
  {
    id: 6,
    genre_id: 1,
    name: 'か'
  }

  )
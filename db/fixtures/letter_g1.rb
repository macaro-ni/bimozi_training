Letter.seed(
  # 全部登録する時にidをつける（そうしないとrails db:seed_fuコマンドを実行するごとにデータが被る）
  # デプロイ後にletterを追加したいときは必ずフォームから行うこと（ユーザーのフォーム送信文字に干渉するため）
  {
    id:1,
    genre_id: 1,
    name: 'あ',
    user_id: 0
  },
  {
    id: 2,
    genre_id: 1,
    name: 'い',
    user_id: 0
  },
  {
    id: 3,
    genre_id: 1,
    name: 'う',
    user_id: 0
  },
  {
    id: 4,
    genre_id: 1,
    name: 'え',
    user_id: 0
  },
  {
    id: 5,
    genre_id: 1,
    name: 'お',
    user_id: 0
  },
  {
    id: 6,
    genre_id: 1,
    name: 'か',
    user_id: 0
  }

  )
Letter.seed(
  # 全部登録する時にidをつける（そうしないとrails db:seed_fuコマンドを実行するごとにデータが被る）
  # デプロイ後にletterを追加したいときは必ずフォームから行うこと（ユーザーのフォーム送信文字に干渉するため）
  {
    id:1,
    genre_id: 1,
    name: 'あいうえお　かきくけこ',
    user_id: 0
  },
  {
    id: 2,
    genre_id: 1,
    name: 'さしすせそ　たちつてと',
    user_id: 0
  },
  {
    id: 3,
    genre_id: 1,
    name: 'なにぬねの　はひふへほ',
    user_id: 0
  },
  {
    id: 4,
    genre_id: 1,
    name: 'まみむめも　やゆよ',
    user_id: 0
  },
  {
    id: 5,
    genre_id: 1,
    name: 'らりるれろ　わをん',
    user_id: 0
  },
  )
require 'fileutils'
Dir.chdir 'public/system/articles/' 
FileUtils.rm(Dir.glob('*.*'))
Article.seed do |s|
  s.id = 1
  s.title = "TimesSquare"
  s.content = "世界中からの観光客が集まる場所でもあり、ここの交差点は世界の交差点と言われる"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/StockSnap_4RTCOR63JG.jpg").open
  s.address = "タイムズスクエア"
  s.latitude = "40.759011"
  s.longitude = "-73.984472"

end
Article.seed do |s|
  s.id = 2
  s.title = "RockefellerCenter"
  s.content = "夜のロックフェラーセンターの景色はいつ見ても惚れ惚れする光です。日によって色も変わるので
  どんな色が見えるか楽しみの一つですね。"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/joshua-newton-305351.jpg").open
  s.address = "RockefellerCenter"
  s.latitude = "40.759179"
  s.longitude = "-73.977816"

end
Article.seed do |s|
  s.id = 3
  s.title = "NewYorkRedBulls"
  s.content = "New York Red Bullsを参戦。地元の応援はまさに熱く最高の戦いを見せてくれた！NYはヤンキースだけではない。サッカーも最高に熱い！"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/P5111391.JPG").open
  s.address = "RedBullArena"
  s.latitude = "40.73664"
  s.longitude = "-74.149617"

end
Article.seed do |s|
  s.id = 4
  s.title = "SixFlagsGreatAdventure"
  s.content = "NYから車で一時間半少し足を伸ばして、アメリカならではの遊園地に行って見ませんか？ここのアトラクションは一言で言うと
  絶叫！そしてまた絶叫。からの絶叫！最後まで絶叫！叫んでリフレッシュするには最適！※絶叫系が苦手な方にはオススメしません。"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/IMG_3407.JPG").open
  s.address = "SixFlagsGreatAdventure"
  s.latitude = "40.1386"
  s.longitude = " -74.440691"

end
Article.seed do |s|
  s.id = 5
  s.title = "BARGOTO"
  s.content = "私のお気に入りのカフェ。ゆっくりできてもちろんコーヒーも美味しい。そしていつでも空いてて開放的なところがお気に入り。NYはそこら中にwifiがありからパソコンで何やら
  作業してる人がいっぱいなのもNYの大好きなところ。"
  s.user_id = 2
  s.image = Rails.root.join("db/fixtures/img/IMG_3621.JPG").open
  s.address = "タイムズスクエア"
  s.latitude = "40.722757"
  s.longitude = "-73.98987"

end
Article.seed do |s|
  s.id = 6
  s.title = "素敵な出会いが街角にある"
  s.content = "34 Street - Herald Sq Stationの近くのVendorで毎日買った思い出のコーヒー
  NYたくさんこの”vendor”が自動販売機の代わりくらいある。そこで１ドルのコーヒーを毎日買っていた。
  毎朝おじちゃんの顔を見ると癒された。
  そんな出会いもここにある。"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/364H.jpg").open
  s.address = "vendor"
  s.latitude = "40.748644"
  s.longitude = " -73.988853"

end
Article.seed do |s|
  s.id = 7
  s.title = "自由の女神"
  s.content = "NYといえばここ。絶対一度は見ておくべき場所の一つ。何回友達を観光に連れて行ったかわからない。
  なので有料のリバティー島まで行くツアーフェリーよりも、実際無料のスタテン アイアンド フェリーを利用することが多かった。
  フェリーも１０分に１便は通ってるのでお金がかかるNYですが無料で海上からみる自由の女神が一番おすすめ"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/new-york-2354194_1920.jpg").open
  s.address = "StatueofLibertyNationalMonument"
  s.latitude = "40.7063953"
  s.longitude = "-74.0309225"


end
Article.seed do |s|
  s.id = 8
  s.title = "ワン・ワールド"
  s.content = "グランドゼロに新しくできたタワーからの展望台が最高今の所一番大きい展望台なので見渡す景色は絶景！格別！
  ここからのsunsetは絶景ですので皆さん是非行って見ては？"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/pexels-photo-321088.jpeg").open
  s.address = "180GreenwichSt,NewYork,NY10007アメリカ合衆国"
  s.latitude = "40.711415"
  s.longitude = "-74.012479"

end
Article.seed do |s|
  s.id = 9
  s.title = "世界の一流ダンサーが教えてくれるスクール"
  s.content = "世界的有名なアーティストのバックダンサーや、コレオグラファーなどが教えているダンススクール。
  料金
  Single Class: $22
  one month　1 Class: $18
  Over 50 years old Rate: $18
  なんて、５０歳のおじいちゃんも元気に踊ってるスタジオ。
  日本じゃ考えられないんだけどアメリカでは普通のことで、結構いらっしゃるんですよね。
  スケジュールと照らし合わせて行って見てください。
  人気の先生は休講も代行も多いから、ちゃんと調べて行くことをお勧めします。
  workshopともなると先着順だから早めに行ってくださいね。"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/IMG_0005.JPG").open
  s.address = "Broadway Dance Center"
  s.latitude = "40.759447"
  s.longitude = "-73.989612"

end
Article.seed do |s|
  s.id = 10
  s.title = "歩いてるとゆかいな格好のゆかいな人に出会える（お金かかるけど）"
  s.content = "NYにはパフォーマーがたくさんいる。ここ、タイムズスクエアが最も多いんだけど偽物のミッキーマウスやバットマン、キティーちゃんなんて
  日本のキャラクターもいる。うっかり写真をお願いしちゃうとチップを請求されるから要注意！チップは払うもんだと思ってツーショットを撮ってくださいね。
  めっちゃキレられながら追いかけられてる人を結構見かけますw"
  s.user_id = 2
  s.image = Rails.root.join("db/fixtures/img/IMG_0712.JPG").open
  s.address = "TimesSquare"
  s.latitude = "40.7589013"
  s.longitude = "-73.985201"

end
Article.seed do |s|
  s.id = 11
  s.title = "米吉ライスバーガーは絶品！"
  s.content = "日本で食べてるモスバーガーが食べたいなって思ったらイーストビレッジのyonekichiへto goだけなので小さいお店なので
  見逃しがちですがちゃんとあります。
  バーガーメニューは全７種類で、一番人気の「秘伝ダレで焼く鶏つくね（７・75ドル）」や、「麦富士豚しょうが焼き（８ドル）」、「鮭の京都老舗味噌西京焼き（９ドル）」
  日本のライスバーガーと同じ味が食べれます！"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/IMG_3780.JPG").open
  s.address = "238AE9thSt,NewYork,NY10003アメリカ合衆国"
  s.latitude = "40.7293243,"
  s.longitude = "-73.9901366"

end
Article.seed do |s|
  s.id = 12
  s.title = "Freemans"
  s.content = "フォトジェニックなお店。お料理も美味しくて雰囲気も◎予約も必要ないし、カジュアルでもOK!
  最寄り駅が近くにないけどおしゃれ女子が集めるお店です"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/12446055_206043966420316_1925286761_n.jpg").open
  s.address = "RockefellerCenter"
  s.latitude = "40.7219641"
  s.longitude = "-73.994655"

end
Article.seed do |s|
  s.id = 13
  s.title = "絶対にイケメンがいるStarbucks"
  s.content = "BrooklynのBedfordの駅にほど近いところにあるstarbucks。店内も広くて落ち着けてもちろんwifiも完備。
  そしてここは私的に絶対イケメンが働いてるお店。
  おしゃれな地域にはイケメンがいる（完全に私の思考ですが)"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/12826304_243122629356773_2023384424_n.jpg").open
  s.address = "StarbucksBedford"
  s.latitude = "40.7152568"
  s.longitude = "-73.9593253"

end
Article.seed do |s|
  s.id = 14
  s.title = "NYでしか食べれない本格的なラーメンhinataラーメン"
  s.content = "パイタンスープの鶏ガラスープのラーメン。
  ここのラーメンは想像以上にしっかりしたスープに、具材のバランスが良い。
  何と言ってもリーズナブル。他の有名ラーメン店よりも安くて美味しい。場所もミッドタウンにあるので夜中も安心していけます！
  ここのオーナーさんは日本人と韓国人のハーフなので日本語もバッチリ！そして味の保証もできます！ぜひ日本の味を味わいたいときは行って見てください。"
  s.user_id = 1
  s.image = Rails.root.join("db/fixtures/img/19985847_128314571104894_2874406884322836480_n.jpg").open
  s.address = "Hinataramen"
  s.latitude = "40.7591427"
  s.longitude = "-73.9688863"

end

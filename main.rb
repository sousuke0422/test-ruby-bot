require "discordrb" # gem。絶対使う
require "./config"

bot = Discordrb::Commands::CommandBot.new(token: TOKEN, prefix: PREFIX)



bot.command :hello do |event|
 event.send_message("hallo,world.#{event.user.name}")
end

bot.command :オーナーだれ？ do |event|
    event.send_message("sousuke様です。")
end

#ツール系

bot.command :list do |event|
    event.send_message("#{event.user.name}さん、未実装です。")
end

bot.command :help do |event|
    event.send_message("```list,help,Attack,restart,dice`````Attack``コマンドの詳細は``list``を実行して下さい。また、いくつかの隠しコマンドが存在します。")
end

bot.command :About do |event|
    event.send_message("sousuke様が開発しているBotです。私はsousuke様が作った中で初めてまともに動くことができる一番最初のBotです。")
end


bot.command :restart do |event|
    event.send_message("sousuke様にそんな技術まだないです。")
end

bot.command :reboot do |event|
    event.send_message("sousuke様にそんな技術まだないです。というか勝手にやったら🙅#{bot.find_emoji(dame)}")
end

#無限ループするので封印
#bot.message(with_text: ".") do |event|
#    event << "."
#end

bot.command(:emoji) do |event, name|
    dame = bot.emoji(460378272757317633)
    begin
        "テスト機能です。#{bot.find_emoji(dame)}"
    rescue
        event << "\`\`\`\nb#{$!}\n\`\`\`"
    end
end

bot.command :dice do |event|
    rand(1..6)
end

#兵器系 Attack

bot.command :Attack do |event|
    event.send_message("``Attack``+``_``+``idxx``
idxx部分に関しては、``list``を実行してidを確認しましょう。")
end

bot.command :Attack_v do |event|
    event.send_message("Attack System Version:``rv4-1.12.7``")
end

bot.command :Attack_idxx do |event|
    event.send_message("不正な値``xx``
しっかり、``Attack``を実行したときのメッセージを見ましょう。")
end

bot.command :Attack_id01 do |event|
    event.send_message("S-GM1++を発射しました")
end

bot.command :Attack_id02 do |event|
    event.send_message("S-GM1X++Gを発射しました")
end

bot.command :Attack_id03 do |event|
    event.send_message("S-GM1X#を発射しました")
end

bot.command :Attack_id03 do |event|
    event.send_message("S-GM1X#を発射しました")
end

#Botカーネル Code name Xfires

bot.command :version do |event|
    event.send_message("Version:``rv01-1.9.0``")
end

bot.command :version_k do |event|
    event.send_message("KernelVersion:``rv01-1.4.1``")
end

bot.command :version_r do |event|
    event.send_message("RubyVersion:``2.3.3p222(amd64)``")
end

bot.command :version_c do |event|
    event.send_message("Code name:``Xfires``")
end

bot.ready do
    bot.game = "私はまだ完璧な姿じゃないよ！！" # => "私はまだ完璧な姿じゃないよ！！ をプレイ中"と表示される
end

#わからん

#member_join(){|event|

#    event.respond "ようこそ～"
#    event.user.pm "はじめまして、sousukeの使いです。マナーを守り、みんなで楽しもう！！"
#}

#謎

#def how_many_servers?
#    bot.servers.size
#end

bot.run
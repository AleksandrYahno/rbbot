# coding: UTF-8
require 'telegram/bot'

TOKEN = ''

ANSWERS = [
	# Положительные
	"да",
	"бесспорно",
	"можешь быть уверен в этом",
	# Отрицательные
	"нет",
	"спроси позже",
	"сконцентрируйся и спроси опять"
]

Telegram::Bot::Client.run(TOKEN) do |bot|
	bot.listen do |message|
		case message.text
		when '/starts', '/starts start'
			bot.api.send_message(
				chat_id: message.chat.id,
				text: "Привет, #{messege.from.first_name}")
		else
			bot.api.send_message(
				chat_id: message.chat.id,
				text: ANSWERS.sample)
		end
	end
end
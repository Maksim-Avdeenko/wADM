script_name 'wADM'
script_author 'Suicide'
script_version '0.1.x'

--- LIBRARY's
local samp = require 'samp.events'
require 'lib.moonloader'
require 'lib.sampfuncs'

--- PARAM's

local cmds = {
	
	['wre'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о том, что Вы начали слежку. [ /wre ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Доброго времени суток, начал наблюдать за игроком.')
		end)
	end, 'Сообщить о том, что Вы начали слежку.' },
	
	['pri'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Пожелать приятной игры. [ /pri ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Приятной игры на YouTube RolePlay! :)')
		end)
	end, 'Пожелать приятной игры.' },
	
	['wnore'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о том, что нарушений не обнаружено. [ /wnore ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' За все время слежки, я не обнаружил нарушений со стороны игрока.')
		end)
	end, 'Сообщить о том, что нарушений не обнаружено.' },
	
	['wnakaz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о том, что игрок уже понес наказание. [ /wnakaz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Спасибо за ваше обращение, игрок уже понес наказание.')
		end)
	end, 'Сообщить о том, что игрок уже понес наказание.' },
	
	['wnorep'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Попросить не засорять репорт. [ /wnorep ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Доброго времени суток, не засоряйте пожалуйста репорт!')
		end)
	end, 'Попросить не засорять репорт.' },
	
	['wbuylid'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о покупке лидерки. [ /wbuylid ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Приобретите пост лидера организации на сайте: [ youtube-rp.space ]')
		end)
	end, 'Сообщить о покупке лидерки.' },
	
	['wbuyadm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о покупке админки. [ /wbuyadm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Приобретите пост администратора на через команду: [ /buyadm ]')
		end)
	end, 'Сообщить о покупке админки.' },
	
	['wpmrub'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о заработке рублей. [ /wpmrub ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Приобретите пост администратора на через команду: [ /buyadm ]')
		end)
	end, 'Сообщить о заработке рублей.' },

	['wpromo'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о получении промокодов. [ /wpromo ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Что-бы получать новые промокоды с нашего сервера, подпишитесь на рассылку нашей группы.')
			wait(1000)
			sampSendChat('/pm '..id..' Наш ВКонтакте: [ vk.com/youtuberp_project ]')
		end)
	end, 'Сообщить о получении промокодов.' },
	
	['wrepwork'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о том, что вы уже работаете по репорту игрока. [ /wrepwork ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Доброго времени суток, уже начал работу по вашему репорту, ожидайте!')
		end)
	end, 'Сообщить о том, что вы уже работаете по репорту игрока.' },
	
	['wresource'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о ресурсах проекта. [ /wresource ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Наш ВКонтакте: [ https://vk.com/youtuberp_project ]')
			wait(1000)
			sampSendChat('/pm '..id..' Наш форум: [ https://forum.youtube-rp.space/ ]')
			wait(1000)
			sampSendChat('/pm '..id..' Наш сайт: [ https://youtube-rp.space ]')
		end)
	end, 'Сообщить о ресурсах проекта.' },
	
	['wjalob'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о том, что игрок может оставить жалобу на форуме. [ /wjalob ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Вы можете оставить свою жалобу на нашем форуме')
		end)
	end, 'Сообщить о том, что игрок может оставить жалобу на форуме.' },
	
	['wdonate'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: Сообщить о том, игрок может пополнить счет аккаунта. [ /wdonate ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' Вы можете пополнить свой счет аккаунта с помощью нашего сайта')
		end)
	end, 'Сообщить о том, игрок может пополнить счет аккаунта.' },

	['wupdate'] = { function()
		sampShowDialog(lox, "Подтверждение", 'Вы действительно хотите обновить скрипт?', "Да", "Нет", 0)
		lua_thread.create(function()
			while sampIsDialogActive(lox) do wait(0) end
				local res, bu, li, inp = sampHasDialogRespond(lox)
				if res and bu == 0 then
				sampAddChatMessage('Вы отказались от обновления', 0xC1C1C1)
				elseif bu == 1 then
				upd()
				end
				return
			end)
		
	end,'Обновление скрипта.' },
	
	--[[['som'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: TEST EBAT', 0xC1C1C1) end
		lua_thread.create(function()
			wait(40)
			sampSendChat('/b test '..id) 
		end)
	end, 'TEST' },
]]
}

cmds['yes'] = cmds['da']
cmds['no'] = cmds['net']

local current = 0
local dialogid = 44444
local cmds_max = 20
local par = {}
local fastupd = false

for i, k in pairs(cmds) do
	par[#par + 1] = i
end

local count = math.ceil(#par / cmds_max)

-- FUNCTION's

local function parseCmds(b1, b2)
	local n = ''
	for i = 0 + cmds_max * current, cmds_max * ( current + 1 ) do
		if par[i - 1] then
			n = n .. '{0088ff}/' .. par[i - 1] .. ' {ffffff}- ' .. cmds[par[i - 1]][2] .. '\n'
		end
	end
	sampShowDialog(dialogid + current, '{0088ff}wADM | Быстрые ответы {ffffff}| Страница ' .. current + 1 .. ' из ' .. count, n, b1, b2, 0)
end

--- EVENT's

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(0) end

	sampAddChatMessage('[ wADM ]: {ffffff}Скрипт загружен. Версия: ' .. script.this.version .. '. Автор: ' .. script.this.authors[1] .. '. [ Команды: /wadm | /wupdate | /winfo].', 0x0088FF)

	sampRegisterChatCommand('wfa', function()
		current = 0
		parseCmds('Далее', '')
	end)
	sampRegisterChatCommand('wadm', dlgcommands)
	sampRegisterChatCommand('templeaders', dlgtempleader)
	sampRegisterChatCommand('arules', dlgarules)
	sampRegisterChatCommand('winfo', function(text)
		if text == '' then return sampAddChatMessage('[ wADM ]: {ffffff}Использовать: /winfo [Команда].', 0x0088FF) end
		if cmds[text] then sampAddChatMessage('[ wADM ]: {ffffff}' .. cmds[text][2] .. ' [ /' .. text .. ' ID ]', 0x0088FF)
		else sampAddChatMessage('[ wADM ]: {ffffff}Данной команды не существует.', 0x0088FF) end
	end)

	while true do wait(0)
		if isKeyJustPressed(VK_0) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() then
			sampSendChat("/replist")
		end
		local id = sampGetCurrentDialogId()
		local res, button, list, input = sampHasDialogRespond(id)
		if res then
			if id - current == dialogid then
				local b1, b2 = 'Далее', 'Назад'
				current = current + ( button == 1 and 1 or -1 )
				if current > -1 and current < count then
					if current == 0 then b2 = ''
					elseif current + 1 == count then b1 = 'Закрыть' end
					parseCmds(b1, b2)
				else current = 0 end
			end
		end
	end
end

function dlgtempleader()
        sampShowDialog(1000, "{0088ff}Список всех лидерок{FFFFFF}", "{0088ff}1 - {FFFFFF}LSPD\n{0088ff}2 - {FFFFFF}FBI", "Закрыть", "", 0)
end

function dlgcommands()
        sampShowDialog(1001, "{0088ff}Команды скрипта{FFFFFF}", "{0088ff}/wupdate {FFFFFF}- Обновление скрипта\n{0088ff}/wfa {FFFFFF}- Список быстрых ответов\n{0088ff}/arules {FFFFFF}- Правила выдачи наказаний", "Закрыть", "", 0)
end

function dlgarules()
        sampShowDialog(1001, "{0088ff}Правила выдачи наказаний{FFFFFF}", "{0088ff}1.1. DM, DB, TK, SK, PG, RK {FFFFFF}- Деморган на 10 минут\n{0088ff}1.2. DM в Зеленой Зоне {FFFFFF}- Деморган 15 минут\n{0088ff}1.3. NonRP {FFFFFF}- Деморган 15 минут\n{0088ff}1.4. Использование читов {FFFFFF}- Деморган 30 или 60 минут/Бан\n{0088ff}1.5. Вредоносные читы {FFFFFF}- бан на 7 дней/блокировка IP от 7 дней\n{0088ff}1.6. Убийство с пассажирского места, nRP стрельба {FFFFFF}- Деморган на 15 минут\n{0088ff}1.7. Использование стороннего ПО во время капта/стрел {FFFFFF}- Варн\n{0088ff}1.8. Полицейский в гетто без маски {FFFFFF}- Респавн игрока/Варн\n\n\t\t\t{0088ff}Нарушение правил чата\n\n{0088ff}2.1. МГ/CapsLock {FFFFFF}- мут на 15 минут\n{0088ff}2.2. Оскорбление в nRP чат {FFFFFF}- мут на 15 минут\n{0088ff}2.3. Неадекватное поведение {FFFFFF}- мут на 10-30 минут\n{0088ff}2.4. Увольнение сотрудника с nRP причиной {FFFFFF}- выговор {0088ff}(только для следящих)\n{0088ff}2.5. Обман администрации {FFFFFF}- мут на 10 минут\n{0088ff}2.6. Оскорбление родных {FFFFFF}- мут на 30 минут/Бан от 110 дней", "Закрыть", "", 0)
end

function upd()
		downloadUrlToFile( "https://www.dropbox.com/",  "moonloader/wADM.lua")
		sampAddChatMessage("скачивание [!]", 0x0088ff)
		wait(900)
		local dwn = [[{ffffff}Скрипт обновлён, изменения вступят в силу после перезагрузки скрипта.]]
		sampShowDialog(16959, "{0082ff}Обновление ", dwn, "{ffffff}Закрыть", "", 0)
end

local send_cmd = false
function samp.onSendCommand(str)
	--[[if send_cmd then 
		send_cmd = false
	else]]
		local cmd, params = str:match('/(%S+)%s*(.*)')
		if not cmd then cmd = str:sub(2) end
		local func = cmds[cmd] and cmds[cmd][1]
		if func then 
			local b = func(params or '')
			send_cmd = true
			if not b then return false end 
		end
	end
--end
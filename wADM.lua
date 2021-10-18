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
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ���, ��� �� ������ ������. [ /wre ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ������� ������� �����, ����� ��������� �� �������.')
		end)
	end, '�������� � ���, ��� �� ������ ������.' },
	
	['pri'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� �������� ����. [ /pri ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' �������� ���� �� YouTube RolePlay! :)')
		end)
	end, '�������� �������� ����.' },
	
	['wnore'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ���, ��� ��������� �� ����������. [ /wnore ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' �� ��� ����� ������, � �� ��������� ��������� �� ������� ������.')
		end)
	end, '�������� � ���, ��� ��������� �� ����������.' },
	
	['wnakaz'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ���, ��� ����� ��� ����� ���������. [ /wnakaz ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ������� �� ���� ���������, ����� ��� ����� ���������.')
		end)
	end, '�������� � ���, ��� ����� ��� ����� ���������.' },
	
	['wnorep'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: ��������� �� �������� ������. [ /wnorep ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ������� ������� �����, �� ��������� ���������� ������!')
		end)
	end, '��������� �� �������� ������.' },
	
	['wbuylid'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ������� �������. [ /wbuylid ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ����������� ���� ������ ����������� �� �����: [ youtube-rp.space ]')
		end)
	end, '�������� � ������� �������.' },
	
	['wbuyadm'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ������� �������. [ /wbuyadm ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ����������� ���� �������������� �� ����� �������: [ /buyadm ]')
		end)
	end, '�������� � ������� �������.' },
	
	['wpmrub'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ��������� ������. [ /wpmrub ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ����������� ���� �������������� �� ����� �������: [ /buyadm ]')
		end)
	end, '�������� � ��������� ������.' },

	['wpromo'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ��������� ����������. [ /wpromo ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ���-�� �������� ����� ��������� � ������ �������, ����������� �� �������� ����� ������.')
			wait(1000)
			sampSendChat('/pm '..id..' ��� ���������: [ vk.com/youtuberp_project ]')
		end)
	end, '�������� � ��������� ����������.' },
	
	['wrepwork'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ���, ��� �� ��� ��������� �� ������� ������. [ /wrepwork ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ������� ������� �����, ��� ����� ������ �� ������ �������, ��������!')
		end)
	end, '�������� � ���, ��� �� ��� ��������� �� ������� ������.' },
	
	['wresource'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � �������� �������. [ /wresource ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' ��� ���������: [ https://vk.com/youtuberp_project ]')
			wait(1000)
			sampSendChat('/pm '..id..' ��� �����: [ https://forum.youtube-rp.space/ ]')
			wait(1000)
			sampSendChat('/pm '..id..' ��� ����: [ https://youtube-rp.space ]')
		end)
	end, '�������� � �������� �������.' },
	
	['wjalob'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ���, ��� ����� ����� �������� ������ �� ������. [ /wjalob ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' �� ������ �������� ���� ������ �� ����� ������')
		end)
	end, '�������� � ���, ��� ����� ����� �������� ������ �� ������.' },
	
	['wdonate'] = { function(id)
		id = tonumber(id)
		if not id then return sampAddChatMessage('[ wADM ]: �������� � ���, ����� ����� ��������� ���� ��������. [ /wdonate ID ]', 0xC1C1C1) end
		lua_thread.create(function()
			sampSendChat('/pm '..id..' �� ������ ��������� ���� ���� �������� � ������� ������ �����')
		end)
	end, '�������� � ���, ����� ����� ��������� ���� ��������.' },

	['wupdate'] = { function()
		sampShowDialog(lox, "�������������", '�� ������������� ������ �������� ������?', "��", "���", 0)
		lua_thread.create(function()
			while sampIsDialogActive(lox) do wait(0) end
				local res, bu, li, inp = sampHasDialogRespond(lox)
				if res and bu == 0 then
				sampAddChatMessage('�� ���������� �� ����������', 0xC1C1C1)
				elseif bu == 1 then
				upd()
				end
				return
			end)
		
	end,'���������� �������.' },
	
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
	sampShowDialog(dialogid + current, '{0088ff}wADM | ������� ������ {ffffff}| �������� ' .. current + 1 .. ' �� ' .. count, n, b1, b2, 0)
end

--- EVENT's

function main()
	if not isSampLoaded() or not isSampfuncsLoaded() then return end
	while not isSampAvailable() do wait(0) end

	sampAddChatMessage('[ wADM ]: {ffffff}������ ��������. ������: ' .. script.this.version .. '. �����: ' .. script.this.authors[1] .. '. [ �������: /wadm | /wupdate | /winfo].', 0x0088FF)

	sampRegisterChatCommand('wfa', function()
		current = 0
		parseCmds('�����', '')
	end)
	sampRegisterChatCommand('wadm', dlgcommands)
	sampRegisterChatCommand('templeaders', dlgtempleader)
	sampRegisterChatCommand('arules', dlgarules)
	sampRegisterChatCommand('winfo', function(text)
		if text == '' then return sampAddChatMessage('[ wADM ]: {ffffff}������������: /winfo [�������].', 0x0088FF) end
		if cmds[text] then sampAddChatMessage('[ wADM ]: {ffffff}' .. cmds[text][2] .. ' [ /' .. text .. ' ID ]', 0x0088FF)
		else sampAddChatMessage('[ wADM ]: {ffffff}������ ������� �� ����������.', 0x0088FF) end
	end)

	while true do wait(0)
		if isKeyJustPressed(VK_0) and not sampIsChatInputActive() and not sampIsDialogActive() and not isPauseMenuActive() then
			sampSendChat("/replist")
		end
		local id = sampGetCurrentDialogId()
		local res, button, list, input = sampHasDialogRespond(id)
		if res then
			if id - current == dialogid then
				local b1, b2 = '�����', '�����'
				current = current + ( button == 1 and 1 or -1 )
				if current > -1 and current < count then
					if current == 0 then b2 = ''
					elseif current + 1 == count then b1 = '�������' end
					parseCmds(b1, b2)
				else current = 0 end
			end
		end
	end
end

function dlgtempleader()
        sampShowDialog(1000, "{0088ff}������ ���� �������{FFFFFF}", "{0088ff}1 - {FFFFFF}LSPD\n{0088ff}2 - {FFFFFF}FBI", "�������", "", 0)
end

function dlgcommands()
        sampShowDialog(1001, "{0088ff}������� �������{FFFFFF}", "{0088ff}/wupdate {FFFFFF}- ���������� �������\n{0088ff}/wfa {FFFFFF}- ������ ������� �������\n{0088ff}/arules {FFFFFF}- ������� ������ ���������", "�������", "", 0)
end

function dlgarules()
        sampShowDialog(1001, "{0088ff}������� ������ ���������{FFFFFF}", "{0088ff}1.1. DM, DB, TK, SK, PG, RK {FFFFFF}- �������� �� 10 �����\n{0088ff}1.2. DM � ������� ���� {FFFFFF}- �������� 15 �����\n{0088ff}1.3. NonRP {FFFFFF}- �������� 15 �����\n{0088ff}1.4. ������������� ����� {FFFFFF}- �������� 30 ��� 60 �����/���\n{0088ff}1.5. ����������� ���� {FFFFFF}- ��� �� 7 ����/���������� IP �� 7 ����\n{0088ff}1.6. �������� � ������������� �����, nRP �������� {FFFFFF}- �������� �� 15 �����\n{0088ff}1.7. ������������� ���������� �� �� ����� �����/����� {FFFFFF}- ����\n{0088ff}1.8. ����������� � ����� ��� ����� {FFFFFF}- ������� ������/����\n\n\t\t\t{0088ff}��������� ������ ����\n\n{0088ff}2.1. ��/CapsLock {FFFFFF}- ��� �� 15 �����\n{0088ff}2.2. ����������� � nRP ��� {FFFFFF}- ��� �� 15 �����\n{0088ff}2.3. ������������ ��������� {FFFFFF}- ��� �� 10-30 �����\n{0088ff}2.4. ���������� ���������� � nRP �������� {FFFFFF}- ������� {0088ff}(������ ��� ��������)\n{0088ff}2.5. ����� ������������� {FFFFFF}- ��� �� 10 �����\n{0088ff}2.6. ����������� ������ {FFFFFF}- ��� �� 30 �����/��� �� 110 ����", "�������", "", 0)
end

function upd()
		downloadUrlToFile( "https://www.dropbox.com/",  "moonloader/wADM.lua")
		sampAddChatMessage("���������� [!]", 0x0088ff)
		wait(900)
		local dwn = [[{ffffff}������ �������, ��������� ������� � ���� ����� ������������ �������.]]
		sampShowDialog(16959, "{0082ff}���������� ", dwn, "{ffffff}�������", "", 0)
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
script_name('Admin-CMD')
script_author('Serj')
script_description('Сокращение команд для администрации')


require"lib.sampfuncs"
require 'lib.moonloader' -- подгрузка основной библиотеки
local sampev = require 'lib.samp.events' -- подгрузка библиотеки евентов
local key = require 'vkeys'  -- загрузка кнопок
local imgui = require 'imgui'   -- загрузка библиотеки imgui
local encoding = require 'encoding' -- загружаем библиотеку encoding
encoding.default = 'CP1251' -- указываем кодировку по умолчанию, она должна совпадать с кодировкой файла. CP1251 - это Windows-1251
u8 = encoding.UTF8 -- и создаём короткий псевдоним для кодировщика UTF-8
local tag = "Admin-CMD v 1.0 "
local main_window_state = imgui.ImBool(false)



local samp = require('samp.events')   
 function samp.onPlayerJoin(a, b, c, d)     -- игрок подключился
  if type(d) == 'string' then
    if d == 'Serj Rosati' then           -- ник игрока
      lua_thread.create(function()
        wait(500)
        sampAddChatMessage(('Разработчик{bd07fd} %s подключился к серверу!'):format(d), 0xdf24c4)   -- команда в чат
      end)
      return true
    end
  end
end



function samp.onPlayerQuit(a, b)   -- игрок вышел с игры
  local c = sampGetPlayerNickname(a)
  if type(c) == 'string' then
    if c == 'Serj Rosati' then    -- ник игрока
      sampAddChatMessage(('Куратор{bd07fd} %s вышел с сервера'):format(c), 0xdf24c4)   -- сообщение в чат
    end 
  end
end



function main()   -- основной код
	autoupdate("тут ссылка на ваш json", '['..string.upper(thisScript().name)..']: ', "тут ссылка на ваш сайт/url вашего скрипта на форуме (если нет, оставьте как в json)")
	while not isSampAvailable() do wait(2500) end

			sampAddChatMessage(tag ..  "by Serj", 0x00f0f6)
			
    	sampRegisterChatCommand("vc", function(param)
		local id,time= string.match(param, "(%d+)%s+(%d+)")
		if id~=nil and time~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." "..time.." Нарушение правил VIP-чата[/vr]")
		else
			sampAddChatMessage("Используйте:{df24c4} /vc [id] [minutes]", 0x097bfb)
		end
	end)
	
   	sampRegisterChatCommand("mg", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." 30 МГ")
		else
			sampAddChatMessage("Используйте:{df24c4} /mg [id]", 0x097bfb)
		end
	end)
	
	sampRegisterChatCommand("nick", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/ban "..id.." 29 НРП ник [Сделайте Имя_Фамилия]")
			sampAddChatMessage("[LUA]: Выдан бан игроку "..n.."["..id.."] за НонРП ник.", 0x097bfb)
		else
			sampAddChatMessage("Используйте:{df24c4} /nick [id]", 0x097bfb)
		end
	end)
	
	   	sampRegisterChatCommand("fl", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." 30 Флуд")
		else
			sampAddChatMessage("Используйте:{df24c4} /fl [id]", 0x097bfb)
		end
	end)
	
	 	sampRegisterChatCommand("cp", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." 30 Капс")
		else
			sampAddChatMessage("Используйте:{df24c4} /cp [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("rab", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." 60 Реклама в раб.чат")
		else
			sampAddChatMessage("Используйте:{df24c4} /rab [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("izp", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/ban "..id.." 29 ИЗП")
			sampAddChatMessage("[LUA]: Выдан бан игроку "..n.."["..id.."] ИЗП.", 0x097bfb)
		else
			sampAddChatMessage("Используйте:{df24c4} /izp [id]", 0x097bfb)
		end
	end)
	
		 	sampRegisterChatCommand("npv", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 60 НПВ")
		else
			sampAddChatMessage("Используйте:{df24c4} /npv [id]", 0x097bfb)
		end
	end)
	
	 	sampRegisterChatCommand("tk", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/warn "..id.." ТК")
		else
			sampAddChatMessage("Используйте:{df24c4} /tk [id]", 0x097bfb)
		end
	end)
	
	sampRegisterChatCommand("sk", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/warn "..id.." СК")
		else
			sampAddChatMessage("Используйте:{df24c4} /sk [id]", 0x097bfb)
		end
	end)
	
	 	sampRegisterChatCommand("dm", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 60 ДМ")
		else
			sampAddChatMessage("Используйте:{df24c4} /dm [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("db", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 60 ДБ")
		else
			sampAddChatMessage("Используйте:{df24c4} /db [id]", 0x097bfb)
		end
	end)
	
	    sampRegisterChatCommand("dmzz", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 300 ДМ в ЗЗ")
		else
			sampAddChatMessage("Используйте:{df24c4} /dmzz [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("ss", function(param)
		local id,idskin= string.match(param, "(%d+)%s+(%d+)")
		if id~=nil and idskin~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/setskin "..id.." "..idskin.." 0")
		else
			sampAddChatMessage("Используйте:{df24c4} /ss [id] [idskin]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("rak", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/banip "..id.." Ракбот")
			sampAddChatMessage("[LUA]: Выдан бан игроку "..n.."["..id.."] Ракбот.", 0x097bfb)
		else
			sampAddChatMessage("Используйте:{df24c4} /rak [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("bag", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 300 баг стрельбы")
		else
			sampAddChatMessage("Используйте:{df24c4} /bag [id]", 0x097bfb)
		end
	end)
	
	  while true do
    wait(0)
     if isKeyDown(key.VK_MENU) and wasKeyPressed(key.VK_P) and not sampIsChatInputActive() and not sampIsDialogActive() and not sampIsCursorActive() then
        main_window_state.v = not main_window_state.v
	end
    imgui.Process = main_window_state.v
  end
end



addEventHandler("onWindowMessage", function (msg, wparam, lparam)     -- закрытие имгуи окна на TAB и ESC
    if wparam == key.VK_ESCAPE or wparam == key.VK_TAB then
        if main_window_state.v then main_window_state.v = false consumeWindowMessage(true, true) end
    end
end)



function imgui.OnDrawFrame()     -- имгуи окно с командами
  if (main_window_state.v) then
	imgui.SetNextWindowPos(imgui.ImVec2(550, 250), imgui.Cond.FirstUseEver)   -- позиция
    imgui.SetNextWindowSize(imgui.ImVec2(300, 350), imgui.Cond.FirstUseEver)  -- размер
    imgui.Begin(u8'Команды', main_window_state)
    imgui.Text(u8' /vc - Нарушение правил VIP-чата[/vr] ')
	imgui.Text(u8' /mg - МГ 30 минут мута')
	imgui.Text(u8' /cp - капс 30 минут мута')
	imgui.Text(u8' /rab - капс 60 минут мута')
	imgui.Text(u8' /fl - флуд 30 минут мута')
	imgui.Text(u8' /nick - нрп ник бан на 29 дней')
	imgui.Text(u8' /izp - ИЗП бан на 29 дней')
	imgui.Text(u8' /npv - НПВ джайл на 60 минут')
	imgui.Text(u8' /tk - ТК варн')
	imgui.Text(u8' /sk - СК варн')
	imgui.Text(u8' /dm - джайл 60 минут')
	imgui.Text(u8' /db - джайл 60 минут')
	imgui.Text(u8' /dmzz - джайл 300 минут')
	imgui.Text(u8' /ss - Выдать временный скин ')
	imgui.Text(u8' /rak - Ракбот ')
	imgui.Text(u8' /bag - баг стрельбы 300 минут деморгана ')
    imgui.End()
  end
end


function autoupdate(json_url, prefix, url)   -- автообновление
  local dlstatus = require('moonloader').download_status
  local json = getWorkingDirectory() .. '\\'..thisScript().name..'-version.json'
  if doesFileExist(json) then os.remove(json) end
  downloadUrlToFile(json_url, json,
    function(id, status, p1, p2)
      if status == dlstatus.STATUSEX_ENDDOWNLOAD then
        if doesFileExist(json) then
          local f = io.open(json, 'r')
          if f then
            local info = decodeJson(f:read('*a'))
            updatelink = info.updateurl
            updateversion = info.latest
            f:close()
            os.remove(json)
            if updateversion ~= thisScript().version then
              lua_thread.create(function(prefix)
                local dlstatus = require('moonloader').download_status
                local color = -1
                sampAddChatMessage((prefix..'Обнаружено обновление. Пытаюсь обновиться c '..thisScript().version..' на '..updateversion), color)
                wait(250)
                downloadUrlToFile(updatelink, thisScript().path,
                  function(id3, status1, p13, p23)
                    if status1 == dlstatus.STATUS_DOWNLOADINGDATA then
                      print(string.format('Загружено %d из %d.', p13, p23))
                    elseif status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
                      print('Загрузка обновления завершена.')
                      sampAddChatMessage((prefix..'Обновление завершено!'), color)
                      goupdatestatus = true
                      lua_thread.create(function() wait(500) thisScript():reload() end)
                    end
                    if status1 == dlstatus.STATUSEX_ENDDOWNLOAD then
                      if goupdatestatus == nil then
                        sampAddChatMessage((prefix..'Обновление прошло неудачно. Запускаю устаревшую версию..'), color)
                        update = false
                      end
                    end
                  end
                )
                end, prefix
              )
            else
              update = false
              print('v'..thisScript().version..': Обновление не требуется.')
            end
          end
        else
          print('v'..thisScript().version..': Не могу проверить обновление. Смиритесь или проверьте самостоятельно на '..url)
          update = false
        end
      end
    end
  )
  while update ~= false do wait(100) end
end

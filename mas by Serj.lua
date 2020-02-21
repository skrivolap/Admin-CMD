script_name('Admin-CMD')
script_author('Serj')
script_description('���������� ������ ��� �������������')


require"lib.sampfuncs"
require 'lib.moonloader' -- ��������� �������� ����������
local sampev = require 'lib.samp.events' -- ��������� ���������� �������
local key = require 'vkeys'  -- �������� ������
local imgui = require 'imgui'   -- �������� ���������� imgui
local encoding = require 'encoding' -- ��������� ���������� encoding
encoding.default = 'CP1251' -- ��������� ��������� �� ���������, ��� ������ ��������� � ���������� �����. CP1251 - ��� Windows-1251
u8 = encoding.UTF8 -- � ������ �������� ��������� ��� ����������� UTF-8
local tag = "Admin-CMD v 1.0 "
local main_window_state = imgui.ImBool(false)



local samp = require('samp.events')   
 function samp.onPlayerJoin(a, b, c, d)     -- ����� �����������
  if type(d) == 'string' then
    if d == 'Serj Rosati' then           -- ��� ������
      lua_thread.create(function()
        wait(500)
        sampAddChatMessage(('�����������{bd07fd} %s ����������� � �������!'):format(d), 0xdf24c4)   -- ������� � ���
      end)
      return true
    end
  end
end



function samp.onPlayerQuit(a, b)   -- ����� ����� � ����
  local c = sampGetPlayerNickname(a)
  if type(c) == 'string' then
    if c == 'Serj Rosati' then    -- ��� ������
      sampAddChatMessage(('�������{bd07fd} %s ����� � �������'):format(c), 0xdf24c4)   -- ��������� � ���
    end 
  end
end



function main()   -- �������� ���
	autoupdate("��� ������ �� ��� json", '['..string.upper(thisScript().name)..']: ', "��� ������ �� ��� ����/url ������ ������� �� ������ (���� ���, �������� ��� � json)")
	while not isSampAvailable() do wait(2500) end

			sampAddChatMessage(tag ..  "by Serj", 0x00f0f6)
			
    	sampRegisterChatCommand("vc", function(param)
		local id,time= string.match(param, "(%d+)%s+(%d+)")
		if id~=nil and time~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." "..time.." ��������� ������ VIP-����[/vr]")
		else
			sampAddChatMessage("�����������:{df24c4} /vc [id] [minutes]", 0x097bfb)
		end
	end)
	
   	sampRegisterChatCommand("mg", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." 30 ��")
		else
			sampAddChatMessage("�����������:{df24c4} /mg [id]", 0x097bfb)
		end
	end)
	
	sampRegisterChatCommand("nick", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/ban "..id.." 29 ��� ��� [�������� ���_�������]")
			sampAddChatMessage("[LUA]: ����� ��� ������ "..n.."["..id.."] �� ����� ���.", 0x097bfb)
		else
			sampAddChatMessage("�����������:{df24c4} /nick [id]", 0x097bfb)
		end
	end)
	
	   	sampRegisterChatCommand("fl", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." 30 ����")
		else
			sampAddChatMessage("�����������:{df24c4} /fl [id]", 0x097bfb)
		end
	end)
	
	 	sampRegisterChatCommand("cp", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." 30 ����")
		else
			sampAddChatMessage("�����������:{df24c4} /cp [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("rab", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/mute "..id.." 60 ������� � ���.���")
		else
			sampAddChatMessage("�����������:{df24c4} /rab [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("izp", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/ban "..id.." 29 ���")
			sampAddChatMessage("[LUA]: ����� ��� ������ "..n.."["..id.."] ���.", 0x097bfb)
		else
			sampAddChatMessage("�����������:{df24c4} /izp [id]", 0x097bfb)
		end
	end)
	
		 	sampRegisterChatCommand("npv", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 60 ���")
		else
			sampAddChatMessage("�����������:{df24c4} /npv [id]", 0x097bfb)
		end
	end)
	
	 	sampRegisterChatCommand("tk", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/warn "..id.." ��")
		else
			sampAddChatMessage("�����������:{df24c4} /tk [id]", 0x097bfb)
		end
	end)
	
	sampRegisterChatCommand("sk", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/warn "..id.." ��")
		else
			sampAddChatMessage("�����������:{df24c4} /sk [id]", 0x097bfb)
		end
	end)
	
	 	sampRegisterChatCommand("dm", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 60 ��")
		else
			sampAddChatMessage("�����������:{df24c4} /dm [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("db", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 60 ��")
		else
			sampAddChatMessage("�����������:{df24c4} /db [id]", 0x097bfb)
		end
	end)
	
	    sampRegisterChatCommand("dmzz", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 300 �� � ��")
		else
			sampAddChatMessage("�����������:{df24c4} /dmzz [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("ss", function(param)
		local id,idskin= string.match(param, "(%d+)%s+(%d+)")
		if id~=nil and idskin~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/setskin "..id.." "..idskin.." 0")
		else
			sampAddChatMessage("�����������:{df24c4} /ss [id] [idskin]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("rak", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/banip "..id.." ������")
			sampAddChatMessage("[LUA]: ����� ��� ������ "..n.."["..id.."] ������.", 0x097bfb)
		else
			sampAddChatMessage("�����������:{df24c4} /rak [id]", 0x097bfb)
		end
	end)
	
		sampRegisterChatCommand("bag", function(param)
		local id= string.match(param, "(%d+)")
		if id~=nil then
			local n = sampGetPlayerNickname(id)
			sampSendChat("/jail "..id.." 300 ��� ��������")
		else
			sampAddChatMessage("�����������:{df24c4} /bag [id]", 0x097bfb)
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



addEventHandler("onWindowMessage", function (msg, wparam, lparam)     -- �������� ����� ���� �� TAB � ESC
    if wparam == key.VK_ESCAPE or wparam == key.VK_TAB then
        if main_window_state.v then main_window_state.v = false consumeWindowMessage(true, true) end
    end
end)



function imgui.OnDrawFrame()     -- ����� ���� � ���������
  if (main_window_state.v) then
	imgui.SetNextWindowPos(imgui.ImVec2(550, 250), imgui.Cond.FirstUseEver)   -- �������
    imgui.SetNextWindowSize(imgui.ImVec2(300, 350), imgui.Cond.FirstUseEver)  -- ������
    imgui.Begin(u8'�������', main_window_state)
    imgui.Text(u8' /vc - ��������� ������ VIP-����[/vr] ')
	imgui.Text(u8' /mg - �� 30 ����� ����')
	imgui.Text(u8' /cp - ���� 30 ����� ����')
	imgui.Text(u8' /rab - ���� 60 ����� ����')
	imgui.Text(u8' /fl - ���� 30 ����� ����')
	imgui.Text(u8' /nick - ��� ��� ��� �� 29 ����')
	imgui.Text(u8' /izp - ��� ��� �� 29 ����')
	imgui.Text(u8' /npv - ��� ����� �� 60 �����')
	imgui.Text(u8' /tk - �� ����')
	imgui.Text(u8' /sk - �� ����')
	imgui.Text(u8' /dm - ����� 60 �����')
	imgui.Text(u8' /db - ����� 60 �����')
	imgui.Text(u8' /dmzz - ����� 300 �����')
	imgui.Text(u8' /ss - ������ ��������� ���� ')
	imgui.Text(u8' /rak - ������ ')
	imgui.Text(u8' /bag - ��� �������� 300 ����� ��������� ')
    imgui.End()
  end
end


function autoupdate(json_url, prefix, url)   -- ��������������
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
                sampAddChatMessage((prefix..'���������� ����������. ������� ���������� c '..thisScript().version..' �� '..updateversion), color)
                wait(250)
                downloadUrlToFile(updatelink, thisScript().path,
                  function(id3, status1, p13, p23)
                    if status1 == dlstatus.STATUS_DOWNLOADINGDATA then
                      print(string.format('��������� %d �� %d.', p13, p23))
                    elseif status1 == dlstatus.STATUS_ENDDOWNLOADDATA then
                      print('�������� ���������� ���������.')
                      sampAddChatMessage((prefix..'���������� ���������!'), color)
                      goupdatestatus = true
                      lua_thread.create(function() wait(500) thisScript():reload() end)
                    end
                    if status1 == dlstatus.STATUSEX_ENDDOWNLOAD then
                      if goupdatestatus == nil then
                        sampAddChatMessage((prefix..'���������� ������ ��������. �������� ���������� ������..'), color)
                        update = false
                      end
                    end
                  end
                )
                end, prefix
              )
            else
              update = false
              print('v'..thisScript().version..': ���������� �� ���������.')
            end
          end
        else
          print('v'..thisScript().version..': �� ���� ��������� ����������. ��������� ��� ��������� �������������� �� '..url)
          update = false
        end
      end
    end
  )
  while update ~= false do wait(100) end
end

local wood = {
    {-620.72607421875,5498.39453125,51.310722351074},
    {-591.08654785156,5495.5463867188,53.8994140625},
    {-585.17517089844,5490.515625,55.532028198242},
    {-572.5166015625,5507.5068359375,55.835231781006},
    {-822.84979248047,5574.3784179688,30.827003479004},
    {-840.4541015625,5573.5971679688,31.64165687561},
    {-849.77130126953,5581.6918945313,26.550567626953},
    {-828.02807617188,5622.056640625,20.132083892822},
    {-826.01763916016,5633.8911132813,21.326683044434},
    {-834.24761962891,5642.1723632813,20.316051483154},
    {-848.48498535156,5639.44921875,18.526363372803},
    {-854.49066162109,5669.5478515625,16.122013092041},
    {-844.41174316406,5702.9033203125,17.874412536621},
    {-822.31311035156,5697.1381835938,19.594703674316},
    {-812.46545410156,5693.0639648438,21.049909591675},
    {-794.15087890625,5709.7138671875,19.867557525635},
    {-778.11138916016,5706.3930664063,20.913654327393},
    {-769.15521240234,5713.2294921875,20.192358016968},
    {-759.88830566406,5792.0654296875,13.505452156067},
    {-774.92224121094,5791.1293945313,9.4702825546265},
    {-775.12554931641,5801.8383789063,15.264953613281},
    {-788.380859375,5811.2358398438,15.369815826416},
    {-756.63952636719,5834.4047851563,16.971305847168},
    {-738.95013427734,5845.8203125,19.270711898804},
    {-707.79705810547,5913.5615234375,17.408483505249},
    {-707.17663574219,5926.3154296875,16.256628036499},
    {-723.63610839844,5942.6801757813,16.091684341431},
    {-725.78967285156,5936.2163085938,16.325002670288},
    {-756.19989013672,5924.8837890625,19.686128616333},
    {-782.95489501953,5919.3193359375,21.036792755127},
    {-797.02111816406,5932.15234375,21.462627410889},
    {-812.49249267578,5950.2827148438,20.826267242432},
    {-754.88128662109,5959.7763671875,19.17557144165},
    {-603.55688476563,6008.6025390625,18.880731582642},
    {-578.52435302734,6038.685546875,19.240037918091},
    {-558.18865966797,5994.3330078125,31.485940933228},
    {-583.95617675781,5913.0639648438,28.688987731934},
    {-605.32537841797,5900.2368164063,25.270427703857},
    {-583.02111816406,5867.408203125,28.797008514404},
    {-595.21655273438,5809.634765625,29.480785369873},
    {-464.3913269043,5679.0654296875,67.746383666992},
    {-462.24234008789,5631.7080078125,58.501617431641},
    {-462.24234008789,5631.7080078125,58.501617431641},
    {-523.94287109375,5560.9536132813,66.37149810791},
    {-553.953125,5540.4267578125,59.939422607422},
    {-571.49749755859,5509.7866210938,55.968883514404},
    {-537.00799560547,5492.3935546875,64.649452209473},
    {-537.00799560547,5492.3935546875,64.649452209473},
    {-584.13073730469,5100.9555664063,123.82489013672},
    {-552.42926025391,5079.2729492188,124.72731781006},
    {-549.58795166016,5004.1918945313,135.15519714355},
    {-569.021484375,4957.376953125,156.31350708008},
    {-600.80224609375,4955.5478515625,161.81510925293},
    {-630.22680664063,5001.5981445313,153.51168823242},
    {-631.69189453125,5000.845703125,154.4253692627},
    {-650.37072753906,5013.861328125,160.14967346191},
    {-713.61175537109,5065.5454101563,144.14408874512},
    {-782.89929199219,5080.12109375,154.08062744141},
    {-799.79327392578,5106.5844726563,148.23229980469},
    {-833.82739257813,5106.607421875,155.8533782959},
    {-846.83489990234,5064.5747070313,177.50163269043},
    {-901.79821777344,5083.091796875,157.54046630859},
    {-921.21954345703,5072.9165039063,163.7054901123},
    {-1042.0993652344,5086.8803710938,155.73799133301},
    {-1036.2731933594,5125.4365234375,128.70040893555}
}

local forestcar = {
    {-837.94342041016,5407.5717773438,34.543998718262}
}

Citizen.CreateThread(function()
    while true do
        Wait(0)
        local P = PlayerPedId(-1)
        local PC = GetEntityCoords(P)
        for k, v in pairs(forestcar) do 
            local dis = GetDistanceBetweenCoords(PC.x, PC.y, PC.z, v[1], v[2], v[3], true)
            if dis < 30 then 
            DrawMarker(2, v[1],v[2],v[3] , 0, 0, 0, 0, 0, 0, 1.5001,1.5001,0.5001, 68, 168, 50, 200, 0, 0, 0, 1, 0, 0, 0)
            if dis < 1 then
                Draw3DText(PC.x, PC.y, PC.z, "~h~~y~Apasa ~g~E ~y~sa iti iei masina de ~g~Padurar", 0.5)
                if IsControlJustPressed(0, 38) then
                    SetNewWaypoint(-609.13958740234,5510.7592773438,49.826019287109)
                    TriggerServerEvent("forestcar")
                    Wait(360000)
                    end
                end
            end
        end
    end
end)


Citizen.CreateThread(function()

    maicatamuie = 0
    bucateledelemne = 12
    while true do 
        Wait(0)
        local P = PlayerPedId(-1)
        local ped = PlayerPedId(-1)
        local PC = GetEntityCoords(P)
	local masinalaoxygen = GetPlayersLastVehicle(P)
    	local cordsmasinaluioxygen = GetEntityCoords(masinalaoxygen)
    	local dismasinutaluioxy = GetDistanceBetweenCoords(PC.x, PC.y, PC.z, cordsmasinaluioxygen.x, cordsmasinaluioxygen.y, cordsmasinaluioxygen.z, true)
        for k, v in pairs(wood) do
        local dis = GetDistanceBetweenCoords(PC.x, PC.y, PC.z, v[1], v[2], v[3], true)
	if dis < 2 and maicatamuie == 0 then
		Draw3DText(PC.x, PC.y, PC.z, "~h~~y~Apasa ~g~'E' ~y~pentru a taia copacul!", 0.5)
	end
	if bucateledelemne == 15 then
		TriggerServerEvent("tofabrica")
		SetNewWaypoint(-474.03399658204,5303.673828125,86.521446228028)
		Wait(0)
        local dismasinutaluioxyasd = GetDistanceBetweenCoords(PC.x, PC.y, PC.z, -471.71282958984,5302.7768554688,86.00072479248, true)
        if dismasinutaluioxyasd < 4 then
            Draw3DText(PC.x, PC.y, PC.z, "~h~~y~Apasa ~g~'E' ~y~pentru a arunca lemnele in masina de tocat!", 0.5)
            if IsControlJustPressed(0, 38) then
                TaskStartScenarioInPlace(ped, 'WORLD_HUMAN_BUM_WASH', 0, true)
                Wait(500)
                ClearPedTasks(ped)
                SetNewWaypoint(-552.2904663086,5348.3920898438,74.74299621582)
                TriggerServerEvent('vinerumegusul')
                bucateledelemne = bucateledelemne -15
            end
        end 
    end
        if dis < 50 and maicatamuie == 0 and bucateledelemne < 15 then 
            DrawMarker(2, v[1],v[2] ,v[3] , 0, 0, 0, 0, 0, 0, 0.9001,0.9001,0.9001, 255, 162, 0, 200, 0, 0, 0, 1, 0, 0, 0)
            if dis < 2 then 
                if IsControlJustPressed(0, 38) then
                    while (not HasAnimDictLoaded("melee@large_wpn@streamed_core")) do 
                        RequestAnimDict("melee@large_wpn@streamed_core")
                        Wait(5000)
                    end
                    local axe = CreateObject(GetHashKey("prop_ld_fireaxe"), PC.x - 0.2, PC.y , PC.z - 0.5,  true,  true, true)
                    AttachEntityToEntity(axe, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 57005), 0.10, -0.13, -0.05, 80.0, -18.0, 175.0, true, true, false, true, 1, true)
                    TaskPlayAnim(GetPlayerPed(-1), "melee@large_wpn@streamed_core", "ground_attack_on_spot", 8.0, 1.0, -1, 49, 0, 0, 0, 0)
                    FreezeEntityPosition(GetPlayerPed(-1),true)
                    Wait(4000)
		    ClearPedTasksImmediately(GetPlayerPed(-1))
                    TriggerServerEvent('notifcaredulemnu')
                    DeleteObject(axe)
		    RequestAnimDict("anim@heists@box_carry@")
            TaskPlayAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
            Wait(100)
		    local wood1 = CreateObject(GetHashKey("prop_fncwood_16e"), PC.x - 0.2, PC.y , PC.z - 0.5,  true,  true, true)
                    AttachEntityToEntity(wood1, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), -790803390), -0.44, 0.23, 0.17, 90.0, -2.0, 90.0, true, true, false, true, 1, true)
                    FreezeEntityPosition(GetPlayerPed(-1),false)
            
            maicatamuie = maicatamuie + 1
            Wait(5000)
            DeleteObject(wood1)

                end
            end
        end

    if maicatamuie > 0 then 
        DrawMarker(0, cordsmasinaluioxygen.x, cordsmasinaluioxygen.y, cordsmasinaluioxygen.z + 1.99 , 0, 0, 0, 0, 0, 0, 0.9001,0.9001,0.9001, 235, 177, 52, 200, 0, 0, 0, 1, 0, 0, 0)
        Wait(10)
    end
	if dismasinutaluioxy < 3 and maicatamuie == 1 then
        TriggerServerEvent('langamasinanotify')
		Draw3DText(PC.x, PC.y, PC.z, "~h~~y~Apasa ~g~'E' ~y~pentru a pune lemnele in masina!", 0.5)
		        TriggerServerEvent('langamasinanotify')
        		if IsControlJustPressed(0, 38) then
            			ClearPedTasksImmediately(GetPlayerPed(-1))
                        TriggerServerEvent('puslemnmasina')
                        Wait(2500)
				    maicatamuie = maicatamuie - 1
				    bucateledelemne = bucateledelemne + 1
				    Wait(500)
        		end
    end
    local dis123 = GetDistanceBetweenCoords(PC.x, PC.y, PC.z, -552.32080078125,5348.3920898438,74.74299621582 - 1, true)

    local susaanu = GetDistanceBetweenCoords(PC.x, PC.y, PC.z, -6.1925401687622,6274.6030273438,31.383825302124 - 1, true)
    if susaanu < 15 then
        DrawMarker(0, -6.1925401687622,6274.6030273438,31.383823394776  , 0, 0, 0, 0, 0, 0, 0.9001,0.9001,0.9001, 235, 177, 52, 200, 0, 0, 0, 1, 0, 0, 0)    end
        if susaanu < 2 then
            TriggerServerEvent('dacubanu')
            Wait(0)
        end
    end
    local disnoua = GetDistanceBetweenCoords(PC.x, PC.y, PC.z, -552.33410644532,5348.4458007812,74.743057250976, true)
    if disnoua < 15 then
        DrawMarker(0, -552.2904663086,5348.3920898438,74.74299621582  , 0, 0, 0, 0, 0, 0, 0.9001,0.9001,0.9001, 235, 177, 52, 200, 0, 0, 0, 1, 0, 0, 0)
        if disnoua < 1 and bucateledelemne == 0 then
                TriggerServerEvent('notifcaredulemnu')
                TriggerServerEvent('darumegusu')
                SetNewWaypoint(-6.1979370117188,6274.5854492188,31.38380432129)
		RequestAnimDict("anim@heists@box_carry@")
		TaskPlayAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 0.0, 0.0, -1, 50, 0, false, false, false)
		local cevacutie = CreateObject(GetHashKey("hei_prop_heist_wooden_box"), PC.x - 0.2, PC.y , PC.z - 2.5,  true,  true, true)
                AttachEntityToEntity(cevacutie, GetPlayerPed(-1), GetPedBoneIndex(GetPlayerPed(-1), 377646791), -0.03, 0.4, 0.37, 90.0, -0.0, 90.0, true, true, false, true, 1, true)
		woodcarry()
		Wait(20000)
		DeleteObject(cevacutie)
            end
        end
    end
    Wait(100)
    Wait(500)
end)





function woodcarry()
 	local x,y,z = table.unpack(GetEntityCoords(GetPlayerPed(-1)))
 	local copac = GetHashKey("") 
        RequestAnimDict("anim@heists@box_carry@")
        TaskPlayAnim(PlayerPedId(), 'anim@heists@box_carry@', 'idle', 8.0, 8.0, -1, 50, 0, false, false, false)
 	    cvprop = CreateObject(GetHashKey('0'), x+5,y,z-0.3, false)
 	    AttachEntityToEntity(cvprop, PlayerPedId(), GetPedBoneIndex(PlayerPedId(),  28422), 0.0, '0', -0.1, 5.0, 0.0, 90.0, 1, 1, 0, 1, 0, 1)
end
function Draw3DText(x,y,z, text,scl) 

    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = (1/dist)*scl
    local fov = (1/GetGameplayCamFov())*50
    local scale = scale*fov
   
    if onScreen then
        SetTextScale(1.0*scale, 2.1*scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 255)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(""..text)
        DrawText(_x,_y)
    end
end

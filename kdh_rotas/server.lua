-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONEXÃO
-----------------------------------------------------------------------------------------------------------------------------------------
kdh = {}
Tunnel.bindInterface("kdh_rotas",kdh)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PERMISSAO 
-----------------------------------------------------------------------------------------------------------------------------------------
function kdh.ballas()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"ballas.permissao")  then
		end						
	end
end
function kdh.grove()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"grove.permissao")  then
		end						
	end
end
function kdh.vagos()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"vagos.permissao")  then
		end						
	end
end
function kdh.bloods()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"bloods.permissao")  then
		end						
	end
end
function kdh.crips()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"crips.permissao")  then
		end						
	end
end
function kdh.triad()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"triade.permissao")  then
		end						
	end
end
function kdh.siciliana()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"siciliana.permissao")  then
		end						
	end
end
function kdh.life()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"life.permissao")  then
		end						
	end
end
function kdh.bahamas()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"bahamas.permissao")  then
		end						
	end
end




-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECK PAGAMENTO 
-----------------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
-- DROGA----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
function kdh.checkPayment()
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if vRP.hasPermission(user_id,"grove.permissao") then
			local itens = math.random(100)
			local quantidade = math.random(2,5)
			if itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("acidobateria")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(2,5)
					vRP.giveInventoryItem( user_id,"acidobateria",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Acido de Bateria.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end	

		elseif vRP.hasPermission(user_id,"ballas.permissao") then
			local itens = math.random(100)
			local quantidade = math.random(2,5)
			if itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("adubo")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(2,5)
					vRP.giveInventoryItem( user_id,"adubo",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Adubo.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end			

		elseif vRP.hasPermission(user_id,"vagos.permissao") then
			local itens = math.random(100)
			local quantidade = math.random(2,5)
			if itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("folhadecoca")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(2,5)
					vRP.giveInventoryItem( user_id,"folhadecoca",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Folha de Coca.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end	

          -----------------------------------------------------------------------------------------------------------------------------------------
          --ARMA----------------------------------------------------------------------------------------------------------------------------------
		  -----------------------------------------------------------------------------------------------------------------------------------------
		
		elseif vRP.hasPermission(user_id,"crips.permissao") then
			local itens = math.random(60)
			local quantidade = math.random(2,5)
			local pagamento = math.random(1000,2000)
			if itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("armacaodearma")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(2,5)
					vRP.giveInventoryItem( user_id,"armacaodearma",quantidade)
					vRP.giveInventoryItem( user_id,"dinheirosujo",pagamento)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Armações de Arma.</b>")
					TriggerClientEvent("Notify",source,"sucesso","Você recebeu <b>$"..pagamento.." Dolares</b>.")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end	

		elseif vRP.hasPermission(user_id,"bloods.permissao") then
			local itens = math.random(60)
			local quantidade = math.random(2,5)
			local pagamento = math.random(1000,2000)
			if itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("armacaodearma")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(2,5)
					vRP.giveInventoryItem( user_id,"armacaodearma",quantidade)
					vRP.giveInventoryItem( user_id,"dinheirosujo",pagamento)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Armações de Arma.</b>")
					TriggerClientEvent("Notify",source,"sucesso","Você recebeu <b>$"..pagamento.." Dolares</b>.")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end	

		   -----------------------------------------------------------------------------------------------------------------------------------------
           --MUNI ----------------------------------------------------------------------------------------------------------------------------------
		   -----------------------------------------------------------------------------------------------------------------------------------------
		elseif vRP.hasPermission(user_id,"mafia.permissao") then
			local itens = math.random(100)
			local quantidade = math.random(5,20)
			local pagamento = math.random(400,500)
			if itens <= 29 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("capsulas")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(5,20)
					vRP.giveInventoryItem( user_id,"capsulas",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Capsulas.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end

			if itens > 26 and itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("polvora")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(5,20)
					local pagamento = math.random(400,500)
					vRP.giveInventoryItem( user_id,"polvora",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Polvoras.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end


		elseif vRP.hasPermission(user_id,"brt.permissao") then
			local itens = math.random(60)
			local quantidade = math.random(5,20)
			local pagamento = math.random(400,500)
			if itens <= 29 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("capsulas")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(5,20)
					vRP.giveInventoryItem( user_id,"capsulas",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Capsulas.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end

			if itens > 26 and itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("polvora")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(5,20)
					local pagamento = math.random(400,500)
					vRP.giveInventoryItem( user_id,"polvora",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Polvoras.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end	

	
		   -----------------------------------------------------------------------------------------------------------------------------------------
           --lavagem ----------------------------------------------------------------------------------------------------------------------------------
		   -----------------------------------------------------------------------------------------------------------------------------------------
	




		elseif vRP.hasPermission(user_id,"life.permissao") then
			local itens = math.random(60)
			local quantidade = math.random(1,2)
			if itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("keysinvasao")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(1,2)
					vRP.giveInventoryItem( user_id,"keysinvasao",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Keys.</b>")

				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end	

		elseif vRP.hasPermission(user_id,"bahamas.permissao") then
			local itens = math.random(60)
			local quantidade = math.random(1,2)
		
			if itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("keysinvasao")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(1,2)
					vRP.giveInventoryItem( user_id,"keysinvasao",quantidade)
					
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Keys.</b>")

				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end



		   -----------------------------------------------------------------------------------------------------------------------------------------
           --MEC ----------------------------------------------------------------------------------------------------------------------------------
		   -----------------------------------------------------------------------------------------------------------------------------------------


		elseif vRP.hasPermission(user_id,"bennys.permissao") then
			local itens = math.random(100)
			local quantidade = math.random(1,1)
			local pagamento = math.random(1,1)
			if itens <= 29 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("gps")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(1,1)
					vRP.giveInventoryItem( user_id,"gps",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x GPS.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end

			if itens > 26 and itens <= 100 then
				if vRP.getInventoryWeight(user_id)+vRP.getItemWeight("repairkit")*quantidade <= vRP.getInventoryMaxWeight(user_id) then
					quantidade = math.random(1,3)
					local pagamento = math.random(1,3)
					vRP.giveInventoryItem( user_id,"repairkit",quantidade)
					TriggerClientEvent("Notify",source,"sucesso","Você coletou <b>"..quantidade.."x Kit.</b>")
				else
					TriggerClientEvent("Notify",source,"negado","<b>Mochila</b> cheia.",8000)
				end
			end



		end
		return true			
	end
end
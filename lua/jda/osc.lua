local osc = require'osc'.new{
  transport = 'udp',
  recvAddr = '0.0.0.0',
  recvPort  = 8999,
}

-- register a "catch all" handler
-- osc:add_handler('*', function(data)
--   print(vim.inspect(data))
-- end)
osc:add_handler("/bobbins", vim.schedule_wrap(function(data)
    vim.cmd('%s/$/hello')
  end)
)

jda_osc = osc

-- open the OSC server
osc:open()

local osc = jda_osc -- jda_osc is a global instance
osc:add_handler("/flibble", vim.schedule_wrap(function(data)
  --vim.cmd('normal iturniphelloworld')
  --vim.fn.feedkeys("boing")
end)
)

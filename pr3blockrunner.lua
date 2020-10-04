if console_init == 0 then
  console_init = 1
  con_b = block
  con_tp = {}
  con_gb = {}
  
  local c_chars = "abcdefghijklmnopqrstuvwxyz 1230*.!\"?456+/,:()789-^=;[]"
  local c_i = 0
  local c_block
  for c_char in c_chars:gmatch(".") do
    c_block = tolua(con_b.getblock((c_i % 9) + 1, math.floor(c_i / 9) + 1))

    con_gb[c_char] = c_block
    con_tp[c_char] = tolua(c_block.teleportto)
  
    c_i = c_i + 1
  end
end



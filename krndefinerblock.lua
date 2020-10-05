console_init = 0 -- triggers initialization code on block runner
console_prgm = 0 -- 0 refers to kernel, 1 refers to prgm1, 2 refers to prgm2, 3 refers to prgm3, 4 refers to prgm4, 5 refers to prgm5
console_text = true -- true means it is in kernel based text window, otherwise, it is in a window defined by a given program.
console_valprgmlst = {0,0,0,0,0}

function console_runCode(code)
  local console_command = string.sub(code,1,3)
  if console_command == "run" then
    
  elseif console_command == "del" then
    local console_comtarg = string.sub(code,5,8)
    if console_comtarg == "krnl" then
      console_print("Removing kernel.")
      function console_kernel()
        
      end
      function console_runCode()
        
      end
      function console_print()
        
      end
    elseif console_comtarg == "prgm" then
      local console_prgtarg = string.sub(code,9,9)
      if (console_prgtarg == "1") and (console_valprgmlst[1] == 1)  then
        
      elseif console_prgtarg == "2" then
        
      elseif console_prgtarg == "3" then
        
      elseif console_prgtarg == "4" then
        
      elseif console_prgtarg == "5" then
        
      else
        console_print("error: target not found")
      end
    else
      console_print("error: target not found")
    end
  elseif console_command == "ext" then
    player.teleportto(0,12)
  else
    console_print("error: invalid command")
  end
  
end

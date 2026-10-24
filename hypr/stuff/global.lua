function do_for_all(tab, func)
  for _, item in ipairs(tab) do
    func(item)
  end
end

function mk(mods, key)
  if #mods == 0 then
    return key
  end
  return table.concat(mods, " + ") .. " + " .. key
end

function spawn(cmd)
  return hl.dsp.exec_cmd("nohup " .. cmd .. " > /dev/null 2>&1 &")
end

alt = "ALT"
ctrl = "CTRL"
mod = "SUPER"
sh = "SHIFT"

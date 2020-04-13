def time_string(a)
  h = a/3600
  m = (a - h*3600)/60
  s = a - h*3600 - m*60
  if h<10
    if m<10
      if s<10
        return "0#{h}:0#{m}:0#{s}"
      else
        return "0#{h}:0#{m}:#{s}"
      end
    else
      if s<10
        return "0#{h}:#{m}:0#{s}"
      else
        return "0#{h}:#{m}:#{s}"
      end
    end
  else
    if m<10
      if s<10
        return "#{h}:0#{m}:0#{s}"
      else
        return "#{h}:0#{m}:#{s}"
      end
    else
      if s<10
        return "#{h}:#{m}:0#{s}"
      else
        return "#{h}:#{m}:#{s}"
      end
    end
  end
end

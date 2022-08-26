require 'os'

def my_os
  if OS.windows?
    "Windows"
  elsif OS.linux?
    "Linux"
  elsif OS.mac?
    "Mac"
  else
    "Não consegui identificar nada."
  end
end

puts "Seu PC possui #{OS.cpu_count} cores, é #{OS.bits} Bits e o sistema operacional é #{my_os}."
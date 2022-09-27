require 'debug'

def func
  (1..4).map { |i| i*2 }
end

def func2
  (1..4).each { |i| i*2 }
end
binding.break

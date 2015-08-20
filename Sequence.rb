#!/bin/env ruby
# encoding: utf-8


def ContinueSequence(x)
  index = 0;
  count = 0;
  res = '';
  x = x.to_s
  while index < x.size
    sym = x[index];
    count = 1;
    if x.size >= index + 1
      while x[index+1] == x[index] do
        index+=1;
        count+=1;
      end
    end
    index+=1
    res += count.to_s + sym.to_s
  end
  res
end

 s = '1';
for i in 0..20 do 
  puts s
  s = ContinueSequence(s);
end
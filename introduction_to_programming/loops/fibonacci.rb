def fibonaci(n)
  if n < 0
    "error"
  elsif n == 0 || n == 1
    n
  else
    fibonaci(n-1) + fibonaci(n-2)
  end
end

puts fibonaci(20)
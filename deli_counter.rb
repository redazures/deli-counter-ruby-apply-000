# Write your code here.
sample=["james","ben","stan","calvin"]
#whom keeps the ticket number
#ticket number increase
katz_deli=[1,2]
counter=3

def ticket_numnber (ppl)
  ppl=counter
  katz_deli<<ppl
  counter+=1
end

def take_a_number(deli,name)
  deli<<name
  puts "Welcome, #{name}. You are number #{deli.length} in line."
end

def now_serving(deli)
  out="There is nobody waiting to be served!"
  if deli.any?
    out= "Currently serving #{deli[0]}."
    deli.shift
  end
  puts out
end

def line(deli)
  out="The line is currently empty."
  counter=0
  if deli.any?
    out= "The line is currently:"
    deli.each do |person|
      counter+=1
      out= "#{out} #{person}"
    end
  end
  puts out
end



take_a_number(sample,"bobby")
take_a_number(sample,"tony")
line(sample)
now_serving(sample)
line(sample)

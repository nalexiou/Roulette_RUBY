
def roulette()
  number_hash = {}
  line= 0
  (1..36).each do |x|
    number_hash[x] = line
    line += 1 if x % 6 == 0
  end
  progression = []
  sequence = [0,0,0,0,0,0]
  bet = [1,1,1,1,1,1]
  
  i =1
  while i<=512 do
    3.times do
      progression << i
    end
    i = 2*i
  end

  p bet
  draw = gets.chomp.to_i
   while !(draw==-1) do
     if draw != 0 || draw != 00 then
       sequence.each_index {|x| sequence[x] += 1 if x!=number_hash[draw]}
       sequence[number_hash[draw]] = 0
       bet.each_index do |x|
         if progression[sequence[x]].nil? then
           sequence[x]=0
         end
         bet[x] = progression[sequence[x]]
       end
     end
     if draw == 0 then
       sequence.map! {|x| x += 1}
       bet.each_index do |x| 
           if progression[sequence[x]].nil? then
           sequence[x]=0
           end
         bet[x] = progression[sequence[x]]
       end
     end
      p bet
      draw = gets.chomp.to_i
  end
end
  
puts roulette()
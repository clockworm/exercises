@a = []
a3 = []

for i in 1..100 do
	@a << i
	end


p @a[7]	

def  eachElem
	@a.each do |x|
		puts x
	end
end	

result = Array.new

x = 0
10.times do |i|	
	result << @a[x..(x+9)]
	x+=10
end
p result
result.clear
nums1 = [1,2,3]
nums2 = [4,6,8]

def sum_array(x,y)
	i = 0
	result = []
  while i<x.size
  		result  << x[i] + y[i]
  		i+=1
  end
  p result
  #x.zip(y) { |a,b| result << a + b }	
end
sum_array(nums1,nums2)

@a.each do |x|
	if x%3==0
		a3<<x	
	end
end
@a.delete_if{|x| x%3!=0}

@a.reverse!
#b = @a.collect!{|x| x*100}

sum = 0
@a.each do |x|
	sum += x
end
puts "总和 #{sum}"

a3.each do |x|
	 puts x 
    end	

 eachElem 

@a = []
a3 = []
#创建一个1到100升序排列的数组 a
for i in 1..100 do
	@a << i
	end


p @a[7]	
# 建立数组a遍历 eachElem方法
def  eachElem
	@a.each do |x|
		puts x
	end
end	
# 数组a各个元素扩大100倍,并赋值给数组 b. 另外不创建新数组的情况下将原数组每个元素也都扩大100倍
b = @a.collect!{|x| x*100}

#获取数组a中 3的倍数的元素,并赋值给数组 a3    不创建新数组的情况下把3倍数以外的元素全部删除
@a.each do |x|
	if x%3==0
		a3<<x	
	end
end
@a.delete_if{|x| x%3!=0}
#数组a倒序排列
@a.reverse!
#数组a各元素的整数和
sum = 0
@a.each do |x|
	sum += x
end
puts "总和 #{sum}"

#从1到100的整数数组中,取出10个分别包含10个元素的数组,如1-10,11-20,21-30,...81-100.将取出的元素全部按顺序保存到数组result中.
result = Array.new

x = 0
10.times do |i|	
	result << @a[x..(x+9)]
	x+=10
end
p result
#定义方法sum_array,合计数组nums1,nums2中相对应的每个元素的值,并合计结果作为数组返回.
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




a3.each do |x|
	 puts x 
    end	

 eachElem 

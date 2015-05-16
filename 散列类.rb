###定义散列wday,内容为星期的英文表达式
wday = Hash.new
wday = {:sunday=>"星期天",:monday=>"星期一",:saturday=>"星期六"}

###统计键值对数量
puts wday.size

###遍历散列元素
wday.each do |x,y|
	puts "\"#{x}\" #{y}。"
end

###定义方法str2hash 将空格和换行符,制表符隔开的字符串转换成散列

str = "blue 蓝色 white 白色 \nred 红色"

#ruby参考答案
def str2hash(str)
  hash = Hash.new()
  array = str.split(/\s+/)
  while key = array.shift #shift删除第一个元素 并且返回第一个元素
    value = array.shift
    hash[key] = value
  end
  return hash
end

p str2hash("bule 蓝 white 白\nred 红")
#自写
def str2hash(str)
	str.gsub!("\n"," ")
	a = str.split(/\s+/)
	ha = Hash.new
	x = 0
	(a.size/2).times do |i|
		ha[a[x]] = a[x+1]
		x+=2
	end
	return ha
end
p str2hash(str)
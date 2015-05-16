###获取电子邮件的账户和域名(自写)
str = "345684180@qq.com"
a = str.split(/@/)
emailName = a[0]
emailAdder = a[1]
p emailName,emailAdder

#Ruby参考
def get_local_and_domain(str)
  str =~ /^([^@]+)@(.*)$/
  localpart = $1
  domain = $2
  return [localpart, domain]
end
(自写)

###将字符串 "正则表达式真难啊,怎么这么难懂!" 改成 "正则表达式真简单啊,怎么这么易懂!"
str =  "正则表达式真难啊,怎么这么难懂!"
str.sub!("难","简单")
str.sub!("难","易")
puts str
#ruby参考答案
s.gsub(/难懂/, "易懂").gsub(/难/, "简单")
###定义方法word_capitalize(字符串参数)  做Capitalize处理(单词首个字母大写,其余小写) #"ruby-hello-world-i'm-like"
str = "ruby-hello-world-i'm-like"
def word_capitalize(str)
	a = str.split(/-/)
	a.collect!{|x| x.capitalize}
	
	#第一种解法
	#s = ""
	#a.each do |x|
	#	s << x+"-"
	#end
	#  s.slice!(-1)
	# return s
	#第二种解法 
	  return a.join("-")
end
p word_capitalize(str)
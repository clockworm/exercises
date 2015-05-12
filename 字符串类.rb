### 有字符串 "Ruby is an object oriented programming language",请创建一个数组,数组元素为每个字符串的各个单词
str = "Ruby is an object oriented programming language"
a = str.split(/\s/)
###按照英文字母顺序进行排序
a.sort!
###不区分大小写,将数组按照平稳字母进行排序
p a.sort_by!{|x| x.downcase}
###将str字符串的全部单词的首个字母转换成大写,然后输出结果
str = "Ruby is an object oriented programming language"
a = str.split(/\s/)
a1 = a.collect{|word| word.capitalize}
 #第一种解法 每个元素后面加上空格并转换成字符串
 #Array#join方法使字符串连接变得简单。这个方法可以连接数组中的字符串，还可以通过参数指定各元素间的连接符
p a1.join(" ")
 #第二种解法 
#str = ""
str.clear
a1.each do |x|
	str<< x + " "
end
str.strip!
p str

###统计字符串中的字符数量和每个字母的数量 以*表示
str = "Ruby is an object oriented programming language"
count = Hash.new(0)
str.each_char do |x|
	 count[x] += 1
end
count.keys.sort.each do |x|
	puts "#{x}: "+"*"*count[x]
end

###定义方法han2num.将汉字"七千九百二十四"转换成 87924
  #这方法写不出来是借用网站按例,求解释
str = "七千九百二十四"
def han2num(string)
  digit4 = digit3 = digit2 = digit1 = "0"

  nstring = string.dup
  nstring.gsub!(/一/, "1")
  nstring.gsub!(/二/, "2")
  nstring.gsub!(/三/, "3")
  nstring.gsub!(/四/, "4")
  nstring.gsub!(/五/, "5")
  nstring.gsub!(/六/, "6")
  nstring.gsub!(/七/, "7")
  nstring.gsub!(/八/, "8")
  nstring.gsub!(/九/, "9")

  if nstring =~ /((\d)?千)?((\d)?百)?((\d)?十)?(\d)?$/
    if $1
      digit4 = $2 || "1"
    end
    if $3
      digit3 = $4 || "1"
    end
    if $5
      digit2 = $6 || "1"
    end
    digit1 = $7 || "0"
  end

  return (digit4+digit3+digit2+digit1).to_i
end

p han2num(str)
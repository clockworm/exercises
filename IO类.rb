###创建脚本,读取文本文件中的内容,按条件进行处理.将空格和换行以外的连续字符串称为"单词"
filename = "D:/test/test.txt"
fileText = File.open(filename)
count = 0
sum = 0 
arryText = fileText.readlines #读取文件返回一个数组
###统计文本的行数
    #arryText.size
	#fileText.rewind  #重置文件指针
	#fileText.truncate(0) #清空文件
	#arryText[arryText.size-1] = arryText.last<<"\n" #最后一行加入换行符
	#fileText.write arryText.reverse.join()  #行逆向输入
	#fileText.write arryText.first   #保留第一行
	#fileText.write arryText.last #保留最后一行
=begin
	#标准答案
def tail(lines, file)
  queue = Array.new
  open(file) do |io|
    while line = io.gets
      queue.push(line)
      if queue.size > lines
        queue.shift
      end
    end
  end
  queue.each{|line| print line }
end

puts "==="
tail(10, __FILE__)

puts "==="
tail(3, __FILE__)
	
=end
	def tail(num,filename)
		fileText = File.open(filename)
		arryText = fileText.readlines
		p arryText.reverse[0..num-1].reverse.join()
		p arryText[(arryText.size-num)..(arryText.size-1)].join()
	end
	#fileText = File.open(filename)
	#fileText.each_line do |line|
		#line.gsub!("\n"," ")
		#line.each_char{count+=1}#统计字符数  #count = line.length
		#line.gsub!(","," ")
		#line.gsub!("."," ")
		#line.split(/\s+/).each{|word| sum+=1} #单词数
	#end
fileText.close
tail(2,"D:/test/test.txt")
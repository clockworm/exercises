###定义to_utf-8(str_gbk,str_gb2312)方法,处理2个字符串连接并且以UTF-8编码输出
str_gbk  = "你好".encode("GBK")
str_gb2312 = "再见".encode("GB2312")
def to_utf8(str_gbk,str_gb2312) 
	return str_gbk.encode("UTF-8") + str_gb2312.encode("UTF-8")
end
###创建编码为GBK的文本文件,文件内容为"你好吗?",定义一个脚本,读取该文件并以UTF-8编码输出
File.open("D:/gkb.txt", "w:GBK") { |file| file.write "你好吗?" }
file = File.open("D:/gkb.txt", "r:GBK") 
arr = file.readlines
puts File.basename(file)
puts arr[0].encode("UTF-8")
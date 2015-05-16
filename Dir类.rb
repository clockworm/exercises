###遍历一个文件夹下的文件和文件夹,节点形式显示 如
#总文件夹
	#第一个文件夹
		#文件1
		#文件夹
			#文件1
			#文件2
			#文件夹
				#文件1
				#文件2
		#文件2
		#文件3
	#第二个文件夹
	#第三个文件夹
	#...
	#..
	#.


require "find"

def du(path)
  result = 0
  Find.find(path){|f|
    if File.file?(f)
      result += File.size(f)
    end
  }
  printf("%d %s\n", result, path)
  return result
end

du(ARGV[0] || ".")
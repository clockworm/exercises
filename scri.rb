#encoding : utf-8
class Cour
	#str = "1 数学作业\n2 数学作业\n3 数学作业\n4 数学作业\n5 数学作业\n"	
	def query
		texts = openCourse.readlines
		co = Hash.new 
		texts.each do |text|
			text.chomp!
			arr_a = text.split(/\s+/)
			co[arr_a[0]] = arr_a[1]
	 end
	 	return co
	end
	def select
		course = query
		course.each do |key,value|
	 	puts "#{key}  #{value}"+" "*5 +"保存|删除"
	 end
	end
	
	def openId
	    return  File.open("D:/id.txt","r+:UTF-8")
	end

	def openCourse
		return File.open("D:/cout.txt","r+:UTF-8") 
	end
	
	def delete(id)
		course = query
		course.delete(id)
		fileId = openId
		fileText = openCourse
		sid = fileId.readlines
		fileText.rewind
		fileId.rewind
		fileText.truncate(0)
		fileId.truncate(0)
		course.each do |key,value|
			fileText.write "#{key} #{value} \n"
		end
		sid << id+"\n"
		sid.uniq!
		fileId.write sid.sort.join()
		fileText.close
		fileId.close
		select
		puts "--------------------------删除成功"
	end

	def save(value)
		course = query
		fileid = openId
		fileText = openCourse
		sid = fileid.readlines
		unless sid.empty? then
		    id = sid.collect{|x| x.gsub(/\s+/,"")}
		    course[id[0]] = value
		    sid.slice!(0)
		    fileText.rewind
			fileid.rewind
			fileText.truncate(0)
			fileid.truncate(0)
		    fileid.write sid.sort.join()
		else
		   course[course.size+1] = value
		end
			course.each do |key,value|
			fileText.write "#{key} #{value} \n"
		end
		fileText.close
		fileid.close
		select
		puts "--------------------------保存成功"
	end
end	
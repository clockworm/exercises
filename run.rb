require "C:/Sites/练习题/exercises/scri"
	@cou = Cour.new
	def enter
			puts "请输入正确指令\n1:添加任务\n2:删除\n3:查看"
			number1 = gets.chomp()
			isNumber(number1 ,0)
			if @number1 == "1"
			   puts "请输入任务名称："
			   couname = gets.chomp()
			   @cou.save(couname)
			else
				if @number1 =="2"
					puts "请输入删除的编号:"
				    number2 = gets.chomp()
				    isNumber(number2 ,2)
				    @cou.delete(@number2)
				else
					@cou.select
				end
			end
	end
	def isNumber(num,name)
		if 0 == name
			if num=="1"||num=="2"||num=="3"
				@number1=num
			else	
				puts "请正确输入指令:"
				num = gets.chomp()
				isNumber(num,name)
			end
		else
			if num.to_i.to_s == num
				@number2=num
			else
				puts "请输入正确编号:"
				num = gets.chomp()
				isNumber(num,name)
			end
		end
	end
#开始运行
enter

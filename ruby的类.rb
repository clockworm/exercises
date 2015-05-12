require "prime" #引用库
 # 1摄氏度到100摄氏度 转换成华氏温度公式
   def  cels2fahr
		for i in 1..100
			hs = i * 9 / 5 + 32
		end	
	end

	c2 = "222222222"
	def ss
	 puts c2 #不能引用方法外部变量
	end
	
    #随机生成1到6的整数
	def dice
 		c = Random.rand(6) + 1
 		return c
	end
	#合计  10次随机数的总和

	def dice10
		sum = 0
		10.times do
			sum += dice
		end
		puts sum
	end
def revseCels2fahr
		c = hs / 9 * 5 - 32
		puts c
end
#判断一个数是否为素数
	def isPrime(num)
		n = 0
		for i in 2..num-1
			if num%i == 0
				n = 1
				puts "#{num} 不是素数! #{i}"
			break		
			end			
		end	
		if n == 0
			puts "#{num} 是素数!"
		end	
		
	end
dice10
isPrime(391)	
puts 391.prime? #引用库直接方法
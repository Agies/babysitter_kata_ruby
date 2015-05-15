class Calculator
	attr_reader :options
	
	def calculate(start_time)
		if start_time == nil or start_time.empty? then
			raise 'Start time is required'
		end		
	end
end
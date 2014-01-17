require 'writeexcel'

workbook = WriteExcel.new('result.xls')
worksheet = workbook.add_worksheet

File.open('user.txt') do |file|
	file.each.with_index do |line, index|
		line.split(",").each.with_index do |w, i|
			worksheet.write(index, i, w)
		end
	end
end

workbook.close

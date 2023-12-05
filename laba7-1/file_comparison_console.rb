require_relative 'file_comparison'

puts "Введите имя первого файла: "
file1 = gets.chomp

puts "Введите имя второго файла: "
file2 = gets.chomp

result = FileComparison.compare(file1, file2)

if result == -1
  puts "Файлы совпадают"
else
  puts "Файлы совпадают, различия начинаются с компоненты #{result}"
end
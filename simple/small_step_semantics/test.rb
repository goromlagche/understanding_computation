require_relative 'main.rb'
load_files
puts "-----------------------------------------------------------------------"
puts Machine.new(Add.new(Multiply.new(Number.new(2), Number.new(3)), Multiply.new(Number.new(4), Number.new(5))), {}).run
puts "-----------------------------------------------------------------------"

puts Machine.new(LessThan.new(Add.new(Number.new(2), Number.new(3)),
                 Multiply.new(Number.new(4), Number.new(5))), {}).run
puts "-----------------------------------------------------------------------"

puts Machine.new(Add.new(Add.new(Variable.new(:x), Variable.new(:y)),
                         Multiply.new(Variable.new(:a), Variable.new(:b))),
                 {x: Number.new(2), y: Number.new(3),
                 a: Number.new(4), b: Number.new(5)}).run
puts "-----------------------------------------------------------------------"

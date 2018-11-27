def load_files
  files = ['base.rb',
           'machine.rb',
           'values/base_value.rb',
           'values/number.rb',
           'values/boolean.rb',
           'operations/operation.rb',
           'operations/add.rb',
           'operations/multiply.rb',
           'operations/less_than.rb'
          ]

  files.each {|x| require_relative x}
end

def clear
  classes = [:Base, :Machine, :BaseValue, :Boolean, :Number,
             :Operation, :Add, :Multiply, :LessThan]

  classes.each {|x| Object.send(:remove_const, x)}
end

def reload
  clear
  load_files
end

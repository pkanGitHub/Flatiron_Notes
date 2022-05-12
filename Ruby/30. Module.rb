module Tools # give module a name with capital first letter
    def sayhi(name)
        puts "hello #{name}"
    end
    def saybye(name)
        puts "bye #{name}"
    end
end

include Tools
Tools.sayhi("mike") # to access the method



#in a new file and wants to use the module from this file
# require_relative "Module.rb"
# include Tools
#
# Tools.sayhi("mike")
class MyClass
    def myMethod
        @vi=1
    end
end

mc=MyClass.new
p mc.instance_variables()

ma=MyClass.new
ma.myMethod()
p ma.instance_variables()

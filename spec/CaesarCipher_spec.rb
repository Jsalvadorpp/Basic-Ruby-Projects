require "./CaesarCipher"

RSpec.describe "CaesarCipher" do 
    it "takes in a string and the shift factor and then outputs the modified string" do
        expect(caesarCipher("What a string!",5)).to eql("Bmfy f xywnsl!")
    end


    it "max number for shift" do
        expect(caesarCipher("attack at dawn",25)).to eql("zsszbj zs czvm")
    end

    it "shift = 0 returns the same word" do 
        expect(caesarCipher("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG",0)).to eql("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG")
    end

    it "shift is a negative number " do
        expect(caesarCipher("abcdefghijklmnopqrstuvwxyz",-1)).to eql("bcdefghijklmnopqrstuvwxyza")
    end
    

end
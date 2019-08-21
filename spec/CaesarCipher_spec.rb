require "./CaesarCipher"

RSpec.describe "CaesarCipher" do 
    it "takes in a string and the shift factor and then outputs the modified string" do
        expect(caesarCipher("What a string!",5)).to eql("Bmfy f xywnsl!")
    end
    

end
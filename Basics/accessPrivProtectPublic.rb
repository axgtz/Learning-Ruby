class Test
  def initialize(a) @a =a end

  #Reciever is implicit
  def getA_implicit() @a end

  #Reciever is explicit
  def getA_explicit() self.a end
end
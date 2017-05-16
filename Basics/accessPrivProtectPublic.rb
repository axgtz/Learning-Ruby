=begin
  Acceso privado no es lo mismo que en c++ y en java, es casi igual que protected pero con una diferencia,
  los metodos privados no pueden ser llamados por un 'explicit reciever' donde me quede video 1:57
=end
class Test
  #Initialize method is protected, no se puede acceder fuera de la clase o de cualquiera de sus subclases
  def initialize(a)
    #Attributes in classes are default protected
    @a =a
  end
  #Methods defined in a class are always public

  #Reciever is implicit
  def getA_implicit() @a end

  #Reciever is explicit
  def getA_explicit() self.a end
end
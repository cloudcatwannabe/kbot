# L24/08 - CSD Kleer
# Construir una aplicación de línea de comandos que permita calcular los datos de facturación 
# incluyendo impuestos y descuentos.
# Debe poder ejecutarse con la línea de comando:
# rgemuby factura.rb <cantidad> <precio unitario> <estado>

class Billing
  def initialize
    @taxes = {
      'UT' => 0.0685,
      'NV' => 0.080,
      'TX' => 0.0625,
      'AL' => 0.040,
      'CA' => 0.0825
    }
  end

  def calculate_discount(subtotal)
    discount = 0
    case subtotal
      when 0 .. 999
        discount = 0.0
      when 1000 .. 4999
        discount = 0.03
      when 5000 .. 6999
        discount = 0.05
      when 7000 .. 9999
        discount = 0.07
      when 10000 .. 49999
        discount = 0.1
      else
        discount = 0.15
    end

    subtotal * discount
  end
  def calculate_price(quantity, price, state)
    subtotal = quantity.to_i * price.to_f
    tax_rate = @taxes[state.upcase]
    tax = subtotal * tax_rate
    discount = calculate_discount(subtotal)
    total = subtotal + tax
    puts "Sub Total: $#{subtotal}"
    puts "Tax: $#{tax}"
    puts "Discount: $#{discount}"
    puts "Total: $#{total}"
  end
end

bill = Billing.new
puts bill.calculate_price(ARGV[0], ARGV[1], ARGV[2])

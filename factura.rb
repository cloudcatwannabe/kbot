# L24/08 - CSD Kleer
# Construir una aplicación de línea de comandos que permita calcular los datos de facturación 
# incluyendo impuestos y descuentos.
# Debe poder ejecutarse con la línea de comando:
# rgemuby factura.rb <cantidad> <precio unitario> <estado>

class Billing
  def calculate_price(quantity, price)
    subtotal = quantity.to_i * price.to_f
    puts "Sub Total: $#{subtotal}"
    puts "Tax: 0"
    puts "Discount: 0"
    puts "Total: 0"
  end
end

bill = Billing.new
puts bill.calculate_price(ARGV[0], ARGV[1])

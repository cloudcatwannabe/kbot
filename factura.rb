# L24/08 - CSD Kleer
# Construir una aplicación de línea de comandos que permita calcular los datos de facturación 
# incluyendo impuestos y descuentos.
# Debe poder ejecutarse con la línea de comando:
# rgemuby factura.rb <cantidad> <precio unitario> <estado>

class Billing
  def calculate_price(quantity, price, state)
    subtotal = quantity.to_i * price.to_f
    tax_rate = 0
    
    if state == 'CA'
      tax_rate = 0.0825
    end

    tax = subtotal * tax_rate;
    total = subtotal + tax;
    puts "Sub Total: $#{subtotal}"
    puts "Tax: $#{tax}"
    puts "Discount: 0"
    puts "Total: $#{total}"
  end
end

bill = Billing.new
puts bill.calculate_price(ARGV[0], ARGV[1], ARGV[2])

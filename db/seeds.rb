require 'csv'

datafile = Rails.root + 'db/data/sales.csv'

CSV.foreach(datafile, headers: true) do |row|
  email = row["name"].split(' ').last.gsub(/[(,)]/,'')
  employee_name = row["name"].split(' ')[0..1].join(' ')
  employee = Employee.find_or_create_by(email: email) do |employee|
    employee.email = email
    employee.name = row["name"].split(' ')[0..1].join(' ')
  end

  product = row["product_name"]
  Product.find_or_create_by(name: product) do |product|
    product.name = row["product_name"]
  end

  customer_name = row["customer_and_account_no"].split.first
  Customer.find_or_create_by(name: customer_name) do |customer|
    customer.name = customer_name
    customer.acct_numbner = row["customer_and_account_no"].split.last.gsub(/[(,)]/,'')
    if customer_name == 'Motorola'
      customer.url = 'http://www.motorola.com/'
    elsif customer_name == 'LG'
      customer.url = 'http://www.lg.com/us'
    elsif customer_name == 'Samsung'
      customer.url = 'http://www.samsung.com/us/'
    elsif customer_name == 'Nokia'
      customer.url = 'http://www.nokia.com/us-en/'
    elsif customer_name == 'Apple'
      customer.url = 'http://www.apple.com/'
    elsif customer_name == 'HTC'
      customer.url = 'http://www.htc.com/us/'
    end
  end

  amount = row["sale_amount"].gsub(/[($)]/,'')
  Sale.find_or_create_by(sale_amount: amount) do |sale|
    sale.rate_of_invoice = row["invoice_frequency"]
    sale.units_sold = row["units_sold"]
    sale.invoice_number = row["invoice_no"]
    sale.customer_id = Customer.where(name: customer_name).take.id 
    sale.employee_id = Employee.where(name: employee_name).take.id
    sale.sale_amount = amount
    sale.date_sold = Chronic.parse(row['sale_date'])
    sale.product_id = Product.where(name: product).take.id
  end
  
end
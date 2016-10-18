class ShoeOrder

  attr_reader :id, :name, :address, :style, :size, :quantity

  def initialize(params)
    @id = nil || params['id'].to_i
    @name = params['name']
    @address = params['address']
    @style = params['style']
    @size = params['size']
    @quantity = params['quantity'].to_i
  end

  def save()
    sql ="INSERT INTO shoe_orders (
      name,
      address,
      style,
      size,
      quantity)
    VALUES (
      '#{@name}',
      '#{@address}',
      '#{@style}',
      '#{@size}',
      #{@quantity}
    ) RETURNING *"
    order_data = SqlRunner.run(sql)
    @id = order_data.first()['id'].to_i
  end

  def self.all
    sql = "SELECT * FROM shoe_orders"
    orders = SqlRunner.run(sql)
    result = orders.map { |order| ShoeOrder.new(order)}
    return result
  end


end
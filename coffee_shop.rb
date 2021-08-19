class CoffeeShop
  attr_accessor :name, :menu, :orders
  def initialize(name, menu)
    @name = name
    @menu = menu
    @orders = []
  end
  def add_order(order_name)
    if @menu.map{|i| i[:item]}.include?(order_name)
    # unless @menu.select{|i| i[:item] == order_name}.empty?
      @orders << order_name
      p "order #{order_name} added"
    else
      p "Sorry, this item is unavailable"
    end
  end
  def fulfill_order
    p @orders.empty? ? "No orders to fulfill!" : "The #{@orders.shift} is ready!"
  end
  def cheapest_item
    p @menu.sort_by { |item| item[:price] }.first[:item]
  end
  def drinks_only
    p @menu.select{|x| x[:type] == 'drink'}.map{|x| x[:item]}
  end
end
menu = [
        {item: 'attieke', type: 'food', price: 1500},
        {item: 'riz', type: 'food', price: 1000},
        {item: 'foutou', type: 'food', price: 1500},
        {item: 'coca', type: 'drink', price: 500},
        {item: 'bissap', type: 'drink', price: 300},
        {item: 'champagne', type: 'drink', price: 20000}
      ]
cs1 = CoffeeShop.new('MamaShelter', menu)
cs1.add_order('fanta') # => "Sorry, this item is unavailable"
cs1.add_order('attieke') # => "Order added"
cs1.add_order('coca') # => "Order added"
p cs1.orders
cs1.fulfill_order
cs1.fulfill_order
p cs1.orders
cs1.cheapest_item
cs1.drinks_only

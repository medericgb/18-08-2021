class Coffeeshop
  attr_accessor :name, :menu, :orders

  def initialize(name, menu)
    @name = name
    @menu = menu
    @orders = []
  end

  def add_order(order_name)
    if @menu.map{|i| i[:item]}.include?(order_name)
      @orders << order_name
      p "Order #{order_name} added !"
    else
      p "This item is unavailable, sorry!"
    end
  end

  def fulfill_order
    p @orders.empty? ? "No orders to fulfill!" : "The #{@orders.shift} is ready!"
  end

  def cheapest_item
    p @menu.sort_by { |item| item[:price] }.first[:item]
  end

  def drinks_only
    p @menu.select{ |x| x[:type] == "drink"}.map{|x| x[:item] }
  end

end

cs1 = Coffeeshop.new("Tokyo Coffee", [{:item => "hot chocolate", :type => "drink", :price => 12}, {:item => "cinnamon roll", :type => "food", :price => 25}, {:item => "iced coffee", :type => "drink", :price => 12}, {:item => "vanilla chai latte", :type => "drink", :price => 32}, {:item => "lemon tea", :type => "drink", :price => 5}])

cs1.add_order("hot cocoa") # "Sorry, this item is unavailable."
# A Little Spice coffee shop does not sell hot cocoa

cs1.add_order("cinnamon roll") #  "Order added!"
cs1.add_order("iced coffee") # "Order added!"
p cs1.orders # ["cinnamon roll", "iced coffee"]
# All current orders are listed.

cs1.fulfill_order # "The cinnamon roll is ready!"
cs1.fulfill_order #"The iced coffee is ready!"
cs1.orders # []
# All orders have been fulfilled

cs1.cheapest_item # "lemon tea"
cs1.drinks_only # ["hot chocolate", "lemon tea", "iced coffee", "vanilla chai latte"]


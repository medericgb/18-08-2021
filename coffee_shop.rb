class Coffeeshop
  attr_accessor :name, :menu, :orders

  def initialize(name, menu, orders)
    @name = name
    @menu = menu
    @orders = orders
  end

  def add_order(name)
    @menu.each do |el|
      if el[:item] == name
        @orders.push(name)
        p "Order added !"
      end
      break
      p "This item is unavailable, sorry!"
    end
  end

  def fulfill_order
  end

  def cheapest_item
  end

  def drink_only
  end

end

cs1 = Coffeeshop.new("CS1 Tokyo Coffee", [{:item => "cinnamon roll", :type => "food", :price => "$25"}, {:item => "iced coffee", :type => "drink", :price => "$12"}, {:item => "vanilla chai latte", :type => "drink", :price => "$32"}, {:item => "lemon tea", :type => "food", :price => "$25"}], [])

cs1.add_order("cinnamon roll") #  "Order added!"
cs1.add_order("iced coffee") # "Order added!"

cs1.orders # ["cinnamon roll", "iced coffee"]
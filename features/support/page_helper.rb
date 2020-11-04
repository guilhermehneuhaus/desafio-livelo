Dir[File.join(File.dirname(__FILE__), '../screens/*_screen.rb')].each { |file| require file }


module ScreenObjects
  def base_screen
    @base ||= BaseScreen.new
  end

  def home_screen
    @home ||= HomeScreen.new
  end

  def search_results_screen
    @search ||= SearchScreen.new
  end

  def products_screen
    @products ||= ProductsScreen.new
  end

  def cart_screen
    @cart ||= CartScreen.new
  end

end

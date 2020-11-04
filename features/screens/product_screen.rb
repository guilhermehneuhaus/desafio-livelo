class ProductsScreen < BaseScreen

    def add_to_cart
      find(:id, 'cc-prodDetails-addToCart').click
    end
    
    def name_product
      find(:css, 'h2[data-bind="text: product().displayName()"]')
    end
  end
  
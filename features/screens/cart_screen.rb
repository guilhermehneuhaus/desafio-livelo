class CartScreen < BaseScreen

    def produto_carrinho
      find(:css, 'a[class="cart-list__subtitle body-text body-text--small cart-list__text--blue"')
    end

  end
  
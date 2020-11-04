Dado('que estou na página Inicial da loja') do
    home_screen.homepage
end
  
Quando('eu buscar um item') do
    home_screen.digitar_busca
    search_results_screen.tocar_produto
end

Quando('clicar em adicionar ao carrinho') do
    @product_name = products_screen.name_product.text
    products_screen.add_to_cart
end

Entao('o produto deve ser adicionado') do
    sleep(3)
    @product_cart = cart_screen.produto_carrinho.text
    expect(current_url).to eql('https://www.livelo.com.br/cart')
    expect(@product_name).to eql(@product_cart)
end
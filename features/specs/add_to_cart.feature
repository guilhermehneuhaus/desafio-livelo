# language: pt

Funcionalidade: Adicionar item ao carrinho
    Eu como usuário
    Quero adicionar um item ao carrinho
    Para relizar a compra do mesmo

@add_to_cart
Cenário: Adicionar item ao carrinho
  Dado que estou na página Inicial da loja
  Quando eu buscar um item
  E clicar em adicionar ao carrinho
  Entao o produto deve ser adicionado
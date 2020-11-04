class HomeScreen < BaseScreen
    def initialize
      @search_button = 'span-searchIcon'
    end
  
    def homepage
      visit('https://www.livelo.com.br')
    end
  
    def digitar_busca
      find(:id, 'input-search').send_keys('caneca')
      tocar_botao_id(@search_button)
    end
  end
  
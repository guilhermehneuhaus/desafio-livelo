class BaseScreen < SitePrism::Page
  
  def verifica_tela_id(screen)
    find(:id, screen)
  end

  def tocar_botao_id(name_button)
    find(:id, name_button).click
  end

end
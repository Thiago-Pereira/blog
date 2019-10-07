module ApplicationHelper
  def preenche_titulo(titulo_da_pagina = ’’)
    titulo_padrao = "Blog  App"
    if (titulo_da_pagina.empty?)
      titulo_padrao
    else
      "#{titulo_da_pagina} | #{titulo_padrao}"
    end
  end
end
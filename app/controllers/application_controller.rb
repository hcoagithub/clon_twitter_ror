class ApplicationController < ActionController::Base
    include Pagy::Backend

    # Configurar el número de elementos por página (opcional)
    def pagy_get_vars(collection, vars)
      # Aquí puedes configurar el número de elementos por página
      vars[:items] = 10 # Por ejemplo, 10 elementos por página
      super(collection, vars)
    end
end

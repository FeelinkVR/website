class Simulation < ApplicationRecord

    belongs_to :user, foreign_key: "user_id"

    validates :tipo, presence: true
    validates :perspectiva, presence: true
    validates :realizada, presence: false


    def conducta_promedio
        promedio = 0
        decisiones = JSON.parse self.decisiones
        cant =  decisiones['cantidad'].to_i
        decisiones['conducta'].each do |conduct|
            promedio += conduct.to_i
        end
        
        promedio = promedio/cant
        
        case
        when promedio < 1
            0
        when promedio < 2
            1
        when promedio < 3
            2
        end

        promedio
    end

    
    def texto_decisiones
        decisiones = JSON.parse self.decisiones
        decisiones['texto']
    end
end

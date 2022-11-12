class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :recoverable, :rememberable, :validatable

  belongs_to :empresa, class_name: "empresa", foreign_key: "empresa_id", optional: true
  has_one :microinsulto_encuesta_inicial, dependent: :destroy
  has_one :microinsulto_encuesta_final, dependent: :destroy

  has_one :microasalto_encuesta_inicial, dependent: :destroy
  has_one :microasalto_encuesta_final, dependent: :destroy

  has_one :microinvalidacion_encuesta_inicial, dependent: :destroy
  has_one :microinvalidacion_encuesta_final, dependent: :destroy
  
  validates :nombre, presence: true
  validates :apellido, presence: true
  validates :telefono, presence: true, numericality: { only_integer: true}, length: {minimum:9, maximum:9}
  validates :encargado, presence: false
  validates :admin, presence: false

  def empresa
    Empresa.find(self.empresa_id)
  end

  #Simulaciones

  def simulaciones
    Simulation.where(user_id: self.id).all
  end

  def simulaciones_realizadas
    Simulation.where(user_id: self.id).where(realizada: true).all
  end

  def simulaciones_pendientes
    Simulation.where(user_id: self.id).where(realizada: false).all
  end

  #Encuestas
  def microinsulto_encuesta_inicial
    MicroinsultoEncuestaInicial.find_by(user_id: self.id)
  end

  def microinsulto_encuesta_final
    MicroinsultoEncuestaFinal.find_by(user_id: self.id)
  end

  def microasalto_encuesta_inicial
    MicroasaltoEncuestaInicial.find_by(user_id: self.id)
  end

  def microasalto_encuesta_final
    MicroasaltoEncuestaFinal.find_by(user_id: self.id)
  end

  def microinvalidacion_encuesta_inicial
    MicroinvalidacionEncuestaInicial.find_by(user_id: self.id)
  end

  def microinvalidacion_encuesta_final
    MicroinvalidacionEncuestaFinal.find_by(user_id: self.id)
  end

  #Simulacion x tipo
  def simulaciones_microinsulto_realizadas
    Simulation.where(user_id: self.id).where(tipo: "Microinsulto").where(realizada: true).all
  end

  def simulaciones_microinsulto_pendientes
    Simulation.where(user_id: self.id).where(tipo: "Microinsulto").where(realizada: false).all
  end

  def simulaciones_microasalto_realizadas
    Simulation.where(user_id: self.id).where(tipo: "Microasalto").where(realizada: true).all
  end

  def simulaciones_microasalto_pendientes
    Simulation.where(user_id: self.id).where(tipo: "Microasalto").where(realizada: false).all
  end

  def simulaciones_microinvalidacion_realizadas
    Simulation.where(user_id: self.id).where(tipo: "Microinvalidacion").where(realizada: true).all
  end

  def simulaciones_microinvalidacion_pendientes
    Simulation.where(user_id: self.id).where(tipo: "Microinvalidacion").where(realizada: false).all
  end


  #Contadores
  def contador_decisiones(perspectiva, conducta)
    simulaciones = Simulation.where(user_id: self.id).where(perspectiva:perspectiva).where(realizada: true).all
    if simulaciones.nil?
      -1
    else
      contador = 0
      total = 0
      simulaciones.each do |simulacion|
        json= JSON.parse simulacion.decisiones
        conductas= json['conducta']
        conductas.each{|c| c == conducta ? contador += 1 : 0}
        total += conductas.count
      end
  
      contador/total.to_f

    end

  end

end

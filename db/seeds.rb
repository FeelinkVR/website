# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#Feelink
Empresa.create(nombre: "Feelink", direccion: "USM", oficina: "A-05", comuna: "San Joaquín", region: "Metropolitana", rut: "12345678-9")

#Cuenta Admin;
User.create(email: 'admin@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Admin', apellido: 'Feelink', admin: true, encargado: true, empresa_id: 1)
#Cuenta Encargado:
User.create(email: 'encargado@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Adrian', apellido: 'Menares', admin: false, encargado: true, empresa_id: 1)
#Cuentas Empleado:
User.create(email: 'empleado@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Mark', apellido: 'Zuckerberg', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'steve@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Steve', apellido: 'Jobs', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'elon@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Elon', apellido: 'Musk', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'jeff@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Jeff', apellido: 'Bezos', admin: false, encargado: false, empresa_id: 1)
User.create(email: 'snopp@feelink.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Snopp', apellido: 'Dogg', admin: false, encargado: false, empresa_id: 1)

#------------Simulaciones-----------

#MICROINSULTO
Simulation.create(user_id: 3, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 4, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,0],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,-1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 7, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 4, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 7, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [-1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 4, tipo: "Microinsulto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microinsulto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microinsulto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 7, tipo: "Microinsulto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

#MICROINVALIDACION
Simulation.create(user_id: 4, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,0],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,-1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 7, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 4, tipo: "Microinvalidacion", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microinvalidacion", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microinvalidacion", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 7, tipo: "Microinvalidacion", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [-1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 4, tipo: "Microinvalidacion", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microinvalidacion", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microinvalidacion", perspectiva: "Victimario", realizada: false )
Simulation.create(user_id: 7, tipo: "Microinvalidacion", perspectiva: "Victimario", realizada: false )

#--------------------Encuestas----------------------------

#MICROINSULTO
MicroinsultoEncuestaInicial.create(user_id: 4, pregunta1: true, pregunta2: true ,pregunta3: true, pregunta4: false,pregunta5: false , pregunta6: false)
MicroinsultoEncuestaInicial.create(user_id: 5, pregunta1: false, pregunta2: true ,pregunta3: true, pregunta4: false,pregunta5: false , pregunta6: false)
MicroinsultoEncuestaInicial.create(user_id: 6, pregunta1: false, pregunta2: false ,pregunta3: true, pregunta4: false,pregunta5: false , pregunta6: false)
MicroinsultoEncuestaInicial.create(user_id: 7, pregunta1: false, pregunta2: false ,pregunta3: true, pregunta4: false,pregunta5: false , pregunta6: false)

MicroinsultoEncuestaFinal.create(user_id: 4, pregunta1: true, pregunta2: true ,pregunta3: true)
MicroinsultoEncuestaFinal.create(user_id: 5, pregunta1: true, pregunta2: true ,pregunta3: true)
MicroinsultoEncuestaFinal.create(user_id: 6, pregunta1: true, pregunta2: true ,pregunta3: false)
MicroinsultoEncuestaFinal.create(user_id: 7, pregunta1: true, pregunta2: true ,pregunta3: false)

#MICROINVALIDACION
MicroinvalidacionEncuestaInicial.create(user_id: 4, pregunta1: true, pregunta2: true , pregunta3: true, pregunta4: true, pregunta5: true, pregunta6: false)
MicroinvalidacionEncuestaInicial.create(user_id: 5, pregunta1: false, pregunta2: true , pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: true)
MicroinvalidacionEncuestaInicial.create(user_id: 6, pregunta1: false, pregunta2: false , pregunta3: true, pregunta4: true, pregunta5: false, pregunta6: false)
MicroinvalidacionEncuestaInicial.create(user_id: 7, pregunta1: false, pregunta2: true , pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false)

MicroinvalidacionEncuestaFinal.create(user_id: 4, pregunta1: true, pregunta2: true, pregunta3: true)
MicroinvalidacionEncuestaFinal.create(user_id: 5, pregunta1: true, pregunta2: true, pregunta3: true)
MicroinvalidacionEncuestaFinal.create(user_id: 6, pregunta1: true, pregunta2: true, pregunta3: true)
MicroinvalidacionEncuestaFinal.create(user_id: 7, pregunta1: true, pregunta2: false, pregunta3: true)


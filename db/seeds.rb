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

#MICROASALTO
Simulation.create(user_id: 4, tipo: "Microasalto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microasalto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,0],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microasalto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,-1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 7, tipo: "Microasalto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 4, tipo: "Microasalto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microasalto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microasalto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 7, tipo: "Microasalto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [-1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 4, tipo: "Microasalto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 5, tipo: "Microasalto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 6, tipo: "Microasalto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 7, tipo: "Microasalto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

#MICROINVALIDACION
Simulation.create(user_id: 3, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
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
MicroinsultoEncuestaInicial.create(user_id: 4, pregunta1: true,  pregunta2: true ,  pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: true)
MicroinsultoEncuestaInicial.create(user_id: 5, pregunta1: false, pregunta2: true ,  pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: true)
MicroinsultoEncuestaInicial.create(user_id: 6, pregunta1: false, pregunta2: false , pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: false)
MicroinsultoEncuestaInicial.create(user_id: 7, pregunta1: false, pregunta2: false , pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: nil)

MicroinsultoEncuestaFinal.create(user_id: 4, pregunta1: true, pregunta2: true, pregunta3: true,  pregunta4: true)
MicroinsultoEncuestaFinal.create(user_id: 5, pregunta1: true, pregunta2: true, pregunta3: true,  pregunta4: true)
MicroinsultoEncuestaFinal.create(user_id: 6, pregunta1: true, pregunta2: true, pregunta3: false, pregunta4: false)
MicroinsultoEncuestaFinal.create(user_id: 7, pregunta1: true, pregunta2: true, pregunta3: false, pregunta4: nil)

#MICROASALTO
MicroasaltoEncuestaInicial.create(user_id: 4, pregunta1: false,  pregunta2: true ,  pregunta3: false, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: true)
MicroasaltoEncuestaInicial.create(user_id: 5, pregunta1: false, pregunta2: true ,  pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: true)
MicroasaltoEncuestaInicial.create(user_id: 6, pregunta1: false, pregunta2: true , pregunta3: false, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: false)
MicroasaltoEncuestaInicial.create(user_id: 7, pregunta1: false, pregunta2: false , pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: nil)

MicroasaltoEncuestaFinal.create(user_id: 4, pregunta1: true, pregunta2: true, pregunta3: false,  pregunta4: true)
MicroasaltoEncuestaFinal.create(user_id: 5, pregunta1: true, pregunta2: true, pregunta3: false,  pregunta4: true)
MicroasaltoEncuestaFinal.create(user_id: 6, pregunta1: true, pregunta2: true, pregunta3: false, pregunta4: false)
MicroasaltoEncuestaFinal.create(user_id: 7, pregunta1: true, pregunta2: true, pregunta3: false, pregunta4: nil)

#MICROINVALIDACION
MicroinvalidacionEncuestaInicial.create(user_id: 4, pregunta1: true,  pregunta2: true,  pregunta3: true, pregunta4: true,  pregunta5: true,  pregunta6: false, pregunta7: true)
MicroinvalidacionEncuestaInicial.create(user_id: 5, pregunta1: false, pregunta2: true,  pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: true,  pregunta7: true)
MicroinvalidacionEncuestaInicial.create(user_id: 6, pregunta1: false, pregunta2: false, pregunta3: true, pregunta4: true,  pregunta5: false, pregunta6: false, pregunta7: false)
MicroinvalidacionEncuestaInicial.create(user_id: 7, pregunta1: false, pregunta2: true,  pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: nil)

MicroinvalidacionEncuestaFinal.create(user_id: 4, pregunta1: true, pregunta2: true,  pregunta3: true, pregunta4: true)
MicroinvalidacionEncuestaFinal.create(user_id: 5, pregunta1: true, pregunta2: true,  pregunta3: true, pregunta4: true)
MicroinvalidacionEncuestaFinal.create(user_id: 6, pregunta1: true, pregunta2: true,  pregunta3: true, pregunta4: false)
MicroinvalidacionEncuestaFinal.create(user_id: 7, pregunta1: true, pregunta2: false, pregunta3: true, pregunta4: nil)


#--------------------------------------------------------------------------EMPRESA 2------------------------------------------------------------------------------
Empresa.create(nombre: "Riot Games", direccion: "Grieta del Invocador", oficina: "1", comuna: "San Joaquín", region: "Metropolitana", rut: "12345678-1")

#Cuenta Admin;
#Cuenta Encargado:
User.create(email: 'encargado@riotgames.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Riot', apellido: 'Games', admin: false, encargado: true, empresa_id: 2)
#Cuentas Empleado:
User.create(email: 'empleado@riotgames.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Teemo', apellido: 'Trol', admin: false, encargado: false, empresa_id: 2)
User.create(email: 'garen@riotgames.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Garen', apellido: 'Demacia', admin: false, encargado: false, empresa_id: 2)
User.create(email: 'akali@riotgames.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Akali', apellido: 'KDA', admin: false, encargado: false, empresa_id: 2)
User.create(email: 'darius@riotgames.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Darius', apellido: 'Noxus', admin: false, encargado: false, empresa_id: 2)
User.create(email: 'jhin@riotgames.cl', password: '123456', password_confirmation: '123456', telefono: '123456789', nombre: 'Jhin', apellido: 'Khada', admin: false, encargado: false, empresa_id: 2)

#------------Simulaciones-----------

#MICROINSULTO
Simulation.create(user_id: 8, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,0],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 11, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,-1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 12, tipo: "Microinsulto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 8, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 11, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [-1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 12, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [-1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 8, tipo: "Microinsulto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microinsulto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microinsulto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 11, tipo: "Microinsulto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 12, tipo: "Microinsulto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [-1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

#MICROASALTO
Simulation.create(user_id: 8, tipo: "Microasalto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microasalto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,0],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microasalto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,-1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 11, tipo: "Microasalto", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 8, tipo: "Microasalto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microasalto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microasalto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 11, tipo: "Microasalto", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [-1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 8, tipo: "Microasalto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microasalto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microasalto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 11, tipo: "Microasalto", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

#MICROINVALIDACION
Simulation.create(user_id: 8, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,0],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 11, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [-1,0,-1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 12, tipo: "Microinvalidacion", perspectiva: "Testigo", realizada: true, decisiones:'{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 8, tipo: "Microinvalidacion", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microinvalidacion", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microinvalidacion", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 11, tipo: "Microinvalidacion", perspectiva: "Victima", realizada: true, decisiones: '{"cantidad": 3,"conducta": [-1,-1,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')

Simulation.create(user_id: 8, tipo: "Microinvalidacion", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [1,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 9, tipo: "Microinvalidacion", perspectiva: "Victimario", realizada: true, decisiones: '{"cantidad": 3,"conducta": [0,0,1],"texto": ["Ignorar","Tirar silla","Llorar"]}')
Simulation.create(user_id: 10, tipo: "Microinvalidacion", perspectiva: "Victimario", realizada: false )
Simulation.create(user_id: 11, tipo: "Microinvalidacion", perspectiva: "Victimario", realizada: false )

#--------------------Encuestas----------------------------

#MICROINSULTO
MicroinsultoEncuestaInicial.create(user_id: 8, pregunta1: true,  pregunta2: true ,  pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: true)
MicroinsultoEncuestaInicial.create(user_id: 9, pregunta1: false, pregunta2: true ,  pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: true)
MicroinsultoEncuestaInicial.create(user_id: 10, pregunta1: false, pregunta2: true , pregunta3: true, pregunta4: true, pregunta5: true, pregunta6: true, pregunta7: true)
MicroinsultoEncuestaInicial.create(user_id: 11, pregunta1: false, pregunta2: true , pregunta3: true, pregunta4: true, pregunta5: true, pregunta6: true, pregunta7: nil)

MicroinsultoEncuestaFinal.create(user_id: 8, pregunta1: true, pregunta2: true, pregunta3: true,  pregunta4: true)
MicroinsultoEncuestaFinal.create(user_id: 9, pregunta1: true, pregunta2: true, pregunta3: true,  pregunta4: true)
MicroinsultoEncuestaFinal.create(user_id: 10, pregunta1: true, pregunta2: true, pregunta3: false, pregunta4: false)
MicroinsultoEncuestaFinal.create(user_id: 11, pregunta1: true, pregunta2: true, pregunta3: false, pregunta4: nil)

#MICROASALTO
MicroasaltoEncuestaInicial.create(user_id: 8, pregunta1: false,  pregunta2: true ,  pregunta3: false, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: true)
MicroasaltoEncuestaInicial.create(user_id: 9, pregunta1: false, pregunta2: true ,  pregunta3: true, pregunta4: true, pregunta5: true, pregunta6: false, pregunta7: true)
MicroasaltoEncuestaInicial.create(user_id: 10, pregunta1: false, pregunta2: true , pregunta3: false, pregunta4: false, pregunta5: false, pregunta6: false, pregunta7: false)
MicroasaltoEncuestaInicial.create(user_id: 11, pregunta1: true, pregunta2: true , pregunta3: true, pregunta4: true, pregunta5: true, pregunta6: true, pregunta7: nil)

MicroasaltoEncuestaFinal.create(user_id: 8, pregunta1: true, pregunta2: true, pregunta3: false,  pregunta4: true)
MicroasaltoEncuestaFinal.create(user_id: 9, pregunta1: true, pregunta2: true, pregunta3: true,  pregunta4: true)
MicroasaltoEncuestaFinal.create(user_id: 10, pregunta1: true, pregunta2: true, pregunta3: true, pregunta4: true)
MicroasaltoEncuestaFinal.create(user_id: 11, pregunta1: true, pregunta2: true, pregunta3: true, pregunta4: nil)

#MICROINVALIDACION
MicroinvalidacionEncuestaInicial.create(user_id: 8, pregunta1: true,  pregunta2: true,  pregunta3: true, pregunta4: true,  pregunta5: true,  pregunta6: false, pregunta7: true)
MicroinvalidacionEncuestaInicial.create(user_id: 9, pregunta1: true, pregunta2: true,  pregunta3: true, pregunta4: false, pregunta5: false, pregunta6: true,  pregunta7: true)
MicroinvalidacionEncuestaInicial.create(user_id: 10, pregunta1: true, pregunta2: true, pregunta3: true, pregunta4: true,  pregunta5: false, pregunta6: true, pregunta7: true)
MicroinvalidacionEncuestaInicial.create(user_id: 11, pregunta1: true, pregunta2: true,  pregunta3: true, pregunta4: true, pregunta5: true, pregunta6: false, pregunta7: nil)

MicroinvalidacionEncuestaFinal.create(user_id: 8, pregunta1: true, pregunta2: true,  pregunta3: true, pregunta4: true)
MicroinvalidacionEncuestaFinal.create(user_id: 9, pregunta1: true, pregunta2: true,  pregunta3: true, pregunta4: false)
MicroinvalidacionEncuestaFinal.create(user_id: 10, pregunta1: true, pregunta2: true,  pregunta3: true, pregunta4: false)
MicroinvalidacionEncuestaFinal.create(user_id: 11, pregunta1: true, pregunta2: true, pregunta3: true, pregunta4: nil)


data Anillo = UnAnillo {peso::Int,frase::String} deriving(Show)
data Hobbit = UnHobbit {nombre::String,estatura::Int,salud::Int,fuerza::Int,esDeLaComarca::Bool,anillo::Anillo}deriving(Show)

otro=UnAnillo{
        peso=11,
        frase="Solo tu puedes decidir que hacer con el tiempo que se te ha dado."    }

unico=UnAnillo{
        peso=12,
        frase="Un anillo para gobernarlos a todos. Un anillo para encontrarlos,un anillo para atraerlos a todos y atarlos en las tinieblas."    }

unTercero=UnAnillo{
        peso=14,
        frase="¡Avanzad sin temor a la oscuridad! ¡Luchad, luchad jinetes de Theoden, caerán las lanzas, se quebrarán los escudos, aún restará la espada!."}


tuco = UnHobbit{
     nombre="Tuco",
     estatura=100,
     salud=8,
     fuerza=60,
     esDeLaComarca=True,
     anillo=otro
     }

frodo = UnHobbit{
     nombre="Frodo",
     estatura=106,
     salud=10,
     fuerza=50,
     esDeLaComarca=True,
     anillo=unico}

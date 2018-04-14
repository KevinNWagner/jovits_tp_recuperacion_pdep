

data Anillo = UnAnillo {peso::Int,frase::String} deriving(Show)
data Hobbit = UnHobbit {nombre::String,estatura::Int,salud::Int,fuerza::Int,esDeLaComarca::Bool,anillo::Anillo}deriving(Show)

otro=UnAnillo{
        peso=11,
        frase="Solo tu puedes"    }

unico=UnAnillo{
        peso=12,
        frase="Un anillo para gobernarlos a todos. Un anillo para encontrarlos, un anillo para atraerlos a todos y atarlos en las tinieblas."    }

unTercero=UnAnillo{
        peso=14,
        frase="¡Avanzad sin temor a la oscuridad! ¡Luchad, luchad jinetes de Theoden, caerán las lanzas, se quebrarán los escudos, aún restará la espada!."}


tuco = UnHobbit{
     nombre="Tuco",
     estatura=100,
     salud=8,
     fuerza=60,
     esDeLaComarca=False,
     anillo=otro
     }

frodo = UnHobbit{
     nombre="Frodo",
     estatura=106,
     salud=10,
     fuerza=50,
     esDeLaComarca=True,
     anillo=unico}



poderDeAnillo (UnAnillo peso frase) = peso*(length(frase))
poder(UnHobbit _ _ _ _ _ a) = poderDeAnillo a

cambiarAnillo (UnHobbit n e s f es a)  = (UnHobbit n e s f es unTercero)

esF = (('F' == ).head)


calculo False (UnHobbit _ _ salud fuerza _ _) = (fuerza * salud) 
calculo True (UnHobbit _ estatura salud fuerza _ _) = ((estatura*salud)+fuerza)

sumaConF False = 0
sumaConF True  = 10

previo (UnHobbit n e s f es a) = calculo es (UnHobbit n e s f es a) + sumaConF(esF n)

mayorACero True previo = 0
mayorACero False previo = previo

resistencia hobit = mayorACero((previo hobit)<poder(hobit)) (previo hobit - poder(hobit))


desayuno (UnHobbit n e s f es a)  = (UnHobbit ("Errrp"++n) e (s+5) f es a) 

segundoDesayuno cant (UnHobbit n e s f es a)  = (UnHobbit n e s (f+(cant*4)) es a)

merienda  a = segundoDesayuno 2 (desayuno a)

despuesDeMerienda a b  = (resistencia(merienda a) ,resistencia(merienda b))



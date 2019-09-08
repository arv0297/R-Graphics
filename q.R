#Tomo el csv,"header" me dice que tiene linea de "titulos" al
#comienzo ,luego con "sep" digo que esta separado por comas
pokemon <- read.csv(file.choose(),header = TRUE,sep = ",")

#Almaceno en una matriz los pokemon que quiero "n:m"
#n es desde donde comienza, m hasta donde llega(pokemons)
#"c(nom1,nom2,...pn)" son los nombres de los "titulos" a usar(Atributos)
pokemondata = (pokemon[1:3,c("hp","attack","speed","sp_attack","sp_defense","defense")])

#Nombras las filas y columnas segun corresponda
#Las Renombre para que se viera mejor,ya que del punto anterior
#ya contenia los nombres
colnames(pokemondata)=c("HP","Attack","Defense","Speed","Special Attack","Special Defense")

#Nombro dinamicamente los pokemon,se debe cambiar el rango "[n:m"
rownames(pokemondata)= (pokemon[1:3,c("name")])
#"t(matrix)" invierto col por fil, del dataframe queda invertido(pokemon)
#usar en la informacion y leyends para no tener incongruencias de matrices
y=barplot(t(as.matrix(pokemondata)), main = "Pokemon Data",col=colors()[c(48,34,92,142,639,466)] , border="black", space=0.05, font.axis=2, legend=rownames(t(pokemondata)),ylab = "Total Power",xlab = "Pokemon")
text(y,labels = y , adj=0.5)

#Create data(ejemplo de como usar el grafico de la pagina misma)
#en los videos solo lo utilizan como tablas la informacion para el grafico
set.seed(112)
data=matrix(sample(1:30,15) , nrow=3)
colnames(data)=c("A","B","C","D","E")
rownames(data)=c("var1","var2","var3")

# Get the stacked barplot
barplot(data, col=colors()[c(23,89,12)] ,main = "Data", border="white", space=0.04, legend=rownames(data), font.axis=5, xlab="group")

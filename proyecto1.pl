%Banco de informacion
ver_pelicula(roberto,suspenso).%roberto prefiere ver peliculas de suspenso
ver_pelicula(jaanai,suspenso).%jaanai prefiere ver peliculas de suspenso
ver_pelicula(abimael,suspenso).%abimael prefiere ver peliculas de suspenso
ver_pelicula(leonardo,romance).%leonardo prefiere ver peliculas de romance
ver_pelicula(miguel,terror).%miguel prefiere ver peliculas de terror

escuchar_musica(abelino,reggae).%abelino escucha musica de reggae
escuchar_musica(jose,rock).%jose escucha musica de reggae
escuchar_musica(izmucaneth,reggae).%izmucaneth escucha musica de reggae
escuchar_musica(ronaldo,rock).%ronaldo escucha musica de reggae
escuchar_musica(maldonado,regional).%maldonado escucha musica de reggae

tiene_netflix(roberto,si).%roberto si tiene netflix
tiene_netflix(jaanai,si).%jaanai si tiene netflix
tiene_netflix(abimael,si).%abimael si tiene netflix
tiene_netflix(leonardo,no).%leonardo no tiene netflix
tiene_netflix(miguel,si).%miguel si tiene netflix

tiene_tiempo_libre(roberto,no).%roberto no tiene tiempo libre
tiene_tiempo_libre(jaanai,no).%jaanai no tiene tiempo libre
tiene_tiempo_libre(abimael,no).%abimael no tiene tiempo libre
tiene_tiempo_libre(leonardo,no).%leonardo no tiene tiempo libre
tiene_tiempo_libre(miguel,no).%miguel no tiene tiempo libre

tiene_spotify(abelino,no).%abelino no tiene spotify
tiene_spotify(jose,si).%jose si tiene spotify
tiene_spotify(izmucaneth,si).%izmucaneth si tiene spotify
tiene_spotify(ronaldo,no).%ronaldo no tiene spotify
tiene_spotify(maldonado,si).%maldonado si tiene spotify

tiene_audifonos(abelino,no).%abelino no tiene audifonos
tiene_audifonos(jose,no).%jose no tiene audifonos
tiene_audifonos(izmucaneth,si).%izmucaneth si tiene audifonos
tiene_audifonos(ronaldo,si).%ronaldo si tiene audifonos
tiene_audifonos(maldonado,no).%maldonado no tiene audifonos
tiene_audifonos(roberto,no).%roberto no tiene audifonos
tiene_audifonos(jaanai,no).%jaanai no tiene audifonos
tiene_audifonos(abimael,si).%abimael si tiene audifonos
tiene_audifonos(leonardo,si).%leonardo si tiene audifonos
tiene_audifonos(miguel,no).%miguel no tiene audifonos

botana_preferida(roberto,palomitas).%la botana preferida de roberto son palomitas
botana_preferida(jaanai,palomitas).%la botana preferida de jaanai son palomitas
botana_preferida(abimael,maruchan).%la botana preferida de abimael son maruchan
botana_preferida(leonardo,maruchan).%la botana preferida de leonardo son maruchan
botana_preferida(miguel,ensalada).%la botana preferida de miguel son ensalada

prefiere_ver_peliculas(X):-ver_pelicula(X,_).% X prefiere ver peliculas
prefiere_escuchar_musica(X):-escuchar_musica(X,_).% X prefiere escuchar musica
tarde_perfecta(X):-ver_pelicula(X,suspenso),botana_preferida(X,palomitas),tiene_netflix(X,si),tiene_tiempo_libre(X,si).% X tiene una tarde perfecta si ve peliculas de suspenso, prefiere palomitas, tiene cuenta de netflix y tiempo libre
vida_saludable(X):-ver_pelicula(X,_),botana_preferida(X,ensalada).% X tiene una vida saludable si ve peliculas y prefiere ensalada
disfruta_el_camino_a_casa(X):-escuchar_musica(X,regional),tiene_audifonos(X,si),tiene_spotify(X,si).% X disfruta del camino a casa si escucha musica regional, tiene audifonos y spotify
es_feliz(X):-ver_pelicula(X,_),botana_preferida(X,maruchan),tiene_tiempo_libre(X,si),tiene_netflix(X,si).% X es feliz si ve pelicuals, prefiere maruchan, tiene tiempo liber y netflix
son_amigos(X,Y):-ver_pelicula(X,_)=:=ver_pelicula(Y,_),botana_preferida(X,_)=:=botana_preferida(Y,_).% Solo son amigos y preiferen ver peliculas de X y su botana preferida es Y
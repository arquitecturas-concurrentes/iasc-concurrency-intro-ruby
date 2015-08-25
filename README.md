# Ejemplos de Concurrencia Tracional con Ruby y JRuby

##Antes de empezar...

instalar ruby con rbenv como dice [acá](http://uqbar-wiki.org/index.php?title=Gu%C3%ADa_de_Instalaci%C3%B3n_de_Ruby#2._Instalar_RBENV)  

Si quieren instalar en cambio ruby de otra manera pueden referirse a las [guías que tenemos](http://arquitecturas-concurrentes.github.io/material/#guias)

Luego de esto si queremos ejecutar alguno de los ejemplos podemos hacerlo mediante el comando de linea de ruby o si queremos probar otras cosas podemos hacerlo mediante pry, que es un REPL más lindo que IRB. para ello debemos hacer 
```
gem install pry
```
Luego de eso podemos situarnos en cualquiera de los ejemplos, y en la carpeta que los contiene hacer

```
pry
```

Una vez adentro del intérprete, basta con hacer un require_relative '<nombre del archivo.rb>' y de ahi podemos ya usar el código de los ejemplos como querramos de manera rápida

## Texto completo 

La explicación de estos ejemplos está [en nuestro blog](https://medium.com/@flbulgarelli/arquitecturas-concurrentes-episodio-2-algo-llamado-concurrencia-ab4994870eb1) 

## Vistazo rápido de los ejemplos

### 1. Intro

El ejemplo facil, el contador roto. Problema clásico del recurso compartido entre varios threads

### 2. La concurrencia es difícil

Parece fácil y obvio, no? Si usamos cosas thread-safe se acaba el problema, no?

Bueno, no. Ejemplo del mapa. Errores comunes sobre la concurrencia: 
  1. **Aunque no este sincronizado, podría no fallar**
  2. **Aunque esté sincronizado, podría fallar (si está mal diseñado!)**

¡Por eso es tan díficil!  

### 3. El problema es la concurrencia, no el paralelismo. 
  
  1. Una tabla rota en mri. **Aunque no haya paralelismo, la concurrencia existe (y puede dañar!)**
  2. Locks (Mutex) vs Reentrant Locks (Monitor)

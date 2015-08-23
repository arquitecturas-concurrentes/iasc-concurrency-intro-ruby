# Ejemplos de Concurrencia Tracional con Ruby y JRuby

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

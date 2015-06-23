## Script Intro Concurrencia

1. El ejemplo facil, el contador roto. 
2. Errores comunes sobre la concurrencia. ¡Por eso es tan díficil!  
  1. **Aunque no este sincronizado, podría no fallar**
  2. **Aunque esté sincronizado, podría fallar (si está mal diseñado!)**
3. El problema es la concurrencia, no el paralelismo. 
  1. Una tabla rota en mri. **Aunque no haya paralelismo, la concurrencia existe (y puede dañar!)**
  2. Locks (Mutex) vs Reentrant Locks (Monitor)

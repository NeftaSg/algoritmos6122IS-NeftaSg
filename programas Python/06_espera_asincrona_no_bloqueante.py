#espera asincrona no bloqueante
import asyncio
class EsperaNoBloqueante:

    def __init__(self):
        pass

    async def tarea(self):
        print('Iniciando la tarea . . .')
        await asyncio.sleep(3)
        print('la tarea ha finalizado!')
        
msj = EsperaNoBloqueante()
asyncio.run(msj.tarea())
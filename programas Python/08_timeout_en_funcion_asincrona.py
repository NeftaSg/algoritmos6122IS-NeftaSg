#timeout en una funcion asincrona
import asyncio
class TimeoutAsincrono:

    def __init__(self):
        pass

    async def tarea(self):
        print('Iniciando tarea . . .')
        await asyncio.sleep(5)

    async def main(self):
        try:
            await asyncio.wait_for(self.tarea(), timeout=3)
        except asyncio.TimeoutError:
            print('La tarea excedió el tiempo de espera):')
            
msj = TimeoutAsincrono()
asyncio.run(msj.main())
#ejecucion de varias tareas en paralelo
import asyncio
class TareasParalelo:
    
    def __init__(self):
        pass

    async def tarea1(self):
        await asyncio.sleep(2)
        print('La primera tarea ha sido completada')

    async def tarea2(self):
        await asyncio.sleep(1)
        print('La segunda tarea ha sido completada')

    async def ejecutar(self):
        await asyncio.gather(self.tarea1(), self.tarea2())

tareas = TareasParalelo()
asyncio.run(tareas.ejecutar())
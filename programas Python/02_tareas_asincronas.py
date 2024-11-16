#tareas asíncronas
import asyncio #import es un modulo
class Tareas:
    
    def __init__(self):
        pass
    
    async def tarea1(self): #metodo asincrono
        await asyncio.sleep(2) #espera asincrona
        print("Tarea 1 completada")
    
    async def tarea2(self):
        await asyncio.sleep(1)
        print("Tarea 2 completada")
    
    async def ejecutar(self):
        await self.tarea1()
        await self.tarea2()

tareas1 = Tareas()
asyncio.run(tareas1.ejecutar()) #corre el metodo asincrono
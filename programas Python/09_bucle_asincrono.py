#ejecucion asincrona de un bucle 
import asyncio
class Bucle:
    
    def __init__(self):
        pass

    async def contar(self,numero):
        await asyncio.sleep(1)
        print(f"Tarea {numero} completado")

    async def main(self):
        for i in range(5):
            await self.contar(i)

bucle1 = Bucle() 
asyncio.run(bucle1.main())



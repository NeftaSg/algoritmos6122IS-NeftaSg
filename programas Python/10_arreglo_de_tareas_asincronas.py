import asyncio
class Asy:

    def __init__(self):
        pass

    async def tarea(self, numero):
        await asyncio.sleep(2)
        print(f"Tarea {numero} completado")

    async def main(self):
        tareas = []
        for i in range(3):
            tareas.append(asyncio.create_task(self.tarea(i)))
            await asyncio.gather(*tareas)

asinc1 =Asy()
asyncio.run(asinc1.main())
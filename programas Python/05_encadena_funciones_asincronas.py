#encadenar funciones asincronas
import asyncio
class EncadenaFuncion:

    def __init__(self):
        pass

    async def proceso1(self):
        await asyncio.sleep(1)
        print('primer proceso, completado!')

    async def proceso2(self):
        await self.proceso1()
        print('segundo proceso, completado!')

proceso = EncadenaFuncion()
asyncio.run(proceso.proceso2())
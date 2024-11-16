#saludo asíncrono
import asyncio
class SaludoAsincrono:

    async def saludo(self):
        await asyncio.sleep(1)
        print("hola de forma asincrona")

saludo = SaludoAsincrono()
asyncio.run(saludo.saludo())
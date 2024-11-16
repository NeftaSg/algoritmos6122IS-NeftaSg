#valor de retorno asincrono
import asyncio
class RetornoAsincrono:

    def __init__(self, dato=''):
        self.dato = ''

    async def obtener_dato(self):
        await asyncio.sleep(2)
        return 'Dato recibido :)'

    async def main(self):
        self.dato = await self.obtener_dato()
        print(self.dato)

valor1 = RetornoAsincrono()
asyncio.run(valor1.main())
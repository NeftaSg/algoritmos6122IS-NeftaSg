#manejo de excepciones en funciones asincronas
import asyncio
class ExcepcionAsincrona:

    def __init__(self):
        pass

    async def tarea(self):
        try:
            print('Ejecutando tarea . . .')
            await asyncio.sleep(1)
            raise ValueError('Ocurrió un error ):')
        except ValueError as e:
            print(f'Excepción capturada: {e}')

msj = ExcepcionAsincrona()
asyncio.run(msj.tarea())
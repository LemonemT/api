import http from 'node:http'
import { PORT } from './config.js'
import { getUsuarios, exportUsuarios, importUsuarios, index } from './controller.js'

const server = http.createServer(async (req, res) => {
  const { url, method } = req

  if (method === 'GET') {
    switch (url) {
      case '/':
        index(req, res)
        break

      case '/usuarios':
        getUsuarios(req, res)
        break

      case '/usuarios/export':
        exportUsuarios(req, res)
        break

      case '/usuarios/import':
        importUsuarios(req, res)
        break

      default:
        res.end('Ruta no encontrada')
        break
    }
  }

  if (method === 'POST') {
    // Código para rutas POST
  }
})
server.listen(PORT, () => console.log('Servidor OK!'))

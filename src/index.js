import http from 'node:http';
import { PORT } from './config.js';
import { getMagazines, index } from './controller.js';


const server = http.createServer(async (req, res) => {
    const { url, method } = req;

    if (method === 'GET') {
        switch (url) {
            case '/':
                index(req, res)
                break;

            case '/magazine':
                getMagazines(req, res)
                break;

            default:
                res.end('Ruta no encontrada')
                break;
        }
    }

    if (method === 'POST') {
        //Código para rutas POST
    }
});

server.listen(PORT, () => console.log('Servidor OK!'));
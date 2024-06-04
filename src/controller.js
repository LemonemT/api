import path from 'node:path'
import fs from 'node:fs/promises'
import { pool } from './db.js';

export const index = async (req, res) => {
    const ruta = path.resolve('./public/index.html');
    const contenido = await fs.readFile(ruta, 'utf-8');
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end(contenido);
}

export const getMagazines = async (req, res) => {
    const resultado = await pool.query('SELECT * FROM magazine')
    const magazines = resultado[0]
    const stringData = JSON.stringify(magazines)

    res.writeHead(200, {'Content-Type' : 'application/json'})
    res.end(stringData)
}
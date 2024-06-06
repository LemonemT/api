import path from 'node:path'
import fs from 'node:fs/promises'
import { pool } from './db.js'

export const index = async (req, res) => {
  const ruta = path.resolve('./public/index.html')
  const contenido = await fs.readFile(ruta, 'utf-8')
  res.writeHead(200, { 'Content-Type': 'text/html' })
  res.end(contenido)
}

export const getMagazines = async (req, res) => {
  const resultado = await pool.query('SELECT * FROM magazine')
  const magazines = resultado[0]
  const stringData = JSON.stringify(magazines)

  res.writeHead(200, { 'Content-Type': 'application/json' })
  res.end(stringData)
}

export const exportMagazines = async (req, res) => {
  try {
    const resultado = await pool.query('SELECT * FROM magazine')
    const magazines = resultado[0]

    //  Obtener cabeceras separado por ','
    const cabeceras = Object.keys(magazines[0]).join(',')

    //  Armar las filas con el formato: 'dato1,dato2,dato3'
    const filas = magazines.reduce((acc, magazine) => {
      const string = `\n${magazine.magazineKey},${magazine.magazineName},${magazine.magazinePrice}`
      return acc + string
    }, '')

    const contenido = cabeceras + filas

    //   Escribir el contenido del archivo
    await fs.writeFile('magazine.txt', contenido)

    //  Mandar respuesta al servidor indicando éxito
    res.writeHead(200, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify({ message: 'Datos de las revistas exportados al archivo magazine.txt' }))
  } catch (error) {
    console.log(error)
    res.writeHead(500, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify({ message: 'Error interno del servidor' }))
  }
}

export const importMagazines = async (req, res) => {
  const contenido = await fs.readFile('magazine.txt', 'utf-8')
  const filas = contenido.split('\n')
  filas.shift()

  for (const fila of filas) {
    console.log(fila)
  }
}

import path from 'node:path'
import fs from 'node:fs/promises'
import { pool } from './db.js'

export const index = async (req, res) => {
  const ruta = path.resolve('./public/index.html')
  const contenido = await fs.readFile(ruta, 'utf-8')
  res.writeHead(200, { 'Content-Type': 'text/html' })
  res.end(contenido)
}

export const getUsuarios = async (req, res) => {
  const resultado = await pool.query('SELECT * FROM miniproyecto')
  const usuarios = resultado[0]
  const stringData = JSON.stringify(usuarios)

  res.writeHead(200, { 'Content-Type': 'application/json' })
  res.end(stringData)
}

export const exportusuarios = async (req, res) => {
  try {
    const resultado = await pool.query('SELECT * FROM miniproyecto')
    const usuarios = resultado[0]

    //  Obtener cabeceras separado por ','
    const cabeceras = Object.keys(usuarios[0]).join(',')

    //  Armar las filas con el formato: 'dato1,dato2,dato3'
    const filas = usuarios.reduce((acc, miniproyecto) => {
      const string = `\n${miniproyecto.id},${miniproyecto.nombres},${miniproyecto.direccion},${miniproyecto.email},${miniproyecto.dni},${miniproyecto.edad},${miniproyecto.fechadecreacion},${miniproyecto.telefono}`
      return acc + string
    }, '')

    const contenido = cabeceras + filas

    //   Escribir el contenido del archivo
    await fs.writeFile('usuarios.csv', contenido)

    //  Mandar respuesta al servidor indicando éxito
    res.writeHead(200, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify({ message: 'Datos de las revistas exportados al archivo usuarios.csv' }))
  } catch (error) {
    console.log(error)
    res.writeHead(500, { 'Content-Type': 'application/json' })
    res.end(JSON.stringify({ message: 'Error interno del servidor' }))
  }
}

export const importUsuarios = async (req, res) => {
  const contenido = await fs.readFile('usuarios.csv', 'utf-8')
  const filas = contenido.split('\n')
  filas.shift()

  for (const fila of filas) {
    console.log(fila)
  }
}

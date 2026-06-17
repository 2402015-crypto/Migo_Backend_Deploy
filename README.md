
---

# MIGO Backend

Este proyecto corresponde al **backend del sistema académico y comunitario MIGO**, desarrollado con **Node.js + Express** y conectado a una **base de datos MySQL/Oracle**.  
Provee una API REST para gestionar usuarios, publicaciones, colonias, especies y tipos de reporte.

---

## Tecnologías utilizadas
- Node.js (v18+)
- Express.js
- MySQL2 / Oracle Autonomous Database
- CORS
- Multer (para subida de imágenes)
- REST API con arquitectura modular

---

## Estructura del proyecto

```
migo-backend/
│
├── server.js              # Punto de entrada del servidor y ENDPOINTS
├── sql/                   # Script SQL
├── uploads/               # Carpeta donde se guardan imágenes
└── README.md              # Documentación del proyecto
```

---

## Instalación y configuración

1. Clonar el repositorio:
   ```bash
   https://github.com/2402015-crypto/Migo_Backend.git
   cd migo-backend
   ```

2. Instalar dependencias:
   ```bash
   npm install
   ```

3. Configurar variables de entorno en un archivo `.env`:
   ```
   DB_HOST=localhost
   DB_USER=usuario
   DB_PASSWORD=contraseña
   DB_NAME=migo_db
   PORT=4000
   ```

4. Iniciar el servidor:
   ```bash
   npm start
   ```
   El backend estará disponible en:  
   `http://localhost:4000/api`

---

## Endpoints principales

### Usuarios
- `POST /api/usuarios/register` → Registrar usuario
- `POST /api/usuarios/login` → Iniciar sesión

### Publicaciones
- `GET /api/publicaciones` → Listar publicaciones
- `POST /api/publicaciones` → Crear publicación
- `POST /api/fotos/:id` → Subir imagen asociada a publicación

### Colonias
- `GET /api/colonias` → Listar colonias

### Especies
- `GET /api/especies` → Listar especies

### Tipos de publicación
- `GET /api/tipos_publi` → Listar tipos de reporte

---

## Ejemplo de request

**Crear publicación:**
```json
POST /api/publicaciones
{
  "id_usuario": 1,
  "id_colonia": 2,
  "id_especie": 1,
  "id_tipo": 1,
  "id_estado": 1,
  "nombre_pet": "Firulais",
  "descripcion": "Se busca perro perdido en Las Palmas"
}
```

**Respuesta:**
```json
{
  "id": 15,
  "message": "Publicación creada con éxito"
}
```

---

## Autor
Proyecto desarrollado por **Bryan Martínez Jiménez**  
Backend académico y comunitario para MIGO.

---
# Proyecto DevOps – Arquitectura de Software

**Alumno:** Álvaro Iglesias  Gonzalez
**Asignatura:** Arquitectura de Software  

## Descripción
Este repositorio contiene el proyecto desarrollado para las prácticas 2.1 y 2.2  
Incluye la estructura base en Python, junto con las mejoras realizadas en ramas 
separadas (feature/docker) como parte del flujo Git.

## 🐳 Docker

### Construir la imagen

Para construir la imagen Docker de la aplicación:
```bash
docker build -t practica1.3 .
```

### Ejecutar el contenedor

Para ejecutar la aplicación en un contenedor:
```bash
docker run practica1.3
```

### Variables de entorno

Esta aplicación no requiere variables de entorno.

### Salida esperada

Al ejecutar el contenedor, verás:

1. **Inventario inicial** con 5 productos (electrónicos y ropa)
2. **Creación de 3 pedidos** de diferentes clientes
3. **Histórico de pedidos** del cliente Alvaro
4. **Stock actualizado** después de procesar los pedidos

Ejemplo de salida:
```
=== INVENTARIO ===
[UUID] Laptop - 1000.0€ (Stock: 5, Garantía: 24 meses)
[UUID] Smartphone - 600.0€ (Stock: 10, Garantía: 12 meses)
[UUID] Camiseta - 20.0€ (Stock: 50, Talla: M, Color: Azul)
...

=== PEDIDOS ===
Pedido [UUID] (2025-11-26)
Cliente: Alvaro
Total: 1040.0€
...

=== STOCK ACTUALIZADO ===
[UUID] Laptop - 1000.0€ (Stock: 4, Garantía: 24 meses)
...
```

### Estructura del proyecto
```
.
├── models/
│   ├── __init__.py
│   ├── usuario.py
│   ├── producto.py
│   └── pedido.py
├── services/
│   ├── __init__.py
│   ├── servicios.py
│   └── tienda_servicios.py
├── main.py
├── dockerfile
├── .dockerignore
├── requirements.txt
└── README.md
```

### Tecnologías utilizadas

- **Python 3.12** (imagen base: `python:3.12-slim`)
- **Docker** para contenerización
- Sin dependencias externas




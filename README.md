<center>
<img src="https://objetivo.news/download/multimedia.normal.bcba10cea1861629.Y29kZXJob3VzZS1xdWUtZXMtcXVlLWhhY2VuX25vcm1hbC53ZWJw.webp" style="width: 100% ; aspect-ratio:16/9">
</center>


# <center>Entrega de proyecto final</center>
@Alumno Kevin Alex Muñoz Pascal

@Comision 53180

@Tutor Santiago Angel Gonzalez - Carla Palermo

@Docente Anderson Michel Torres



---

### **Consignas:**
- La base de datos debe contener al menos:
    * ~ 15 tablas, entre las cuales debe haber al menos 1 tabla de hechos,  2 tablas transaccionales.
    * ~ 5 vistas.
    * ~ 2 stored procedure.
    * ~ 2  trigger.
    * ~ 2 funciones
    
- El documento debe contener:
    - Introducción
    - Objetivo
    - Situación problemática
    - Modelo de negocio
    - Diagrama de entidad relació
    - Listado de tablas con descripción de estructura (columna,descripción, tipo de datos, tipo de clave)
    - Scripts de creación de cada objeto de la base de datos
    - Scripts de inserción de datos
    - Informes generados en base a la información de la base
    - Herramientas y tecnologías usadas



---

## Tematica del proyecto
Mi proyecto es una base de datos MySQL para mi proyecto de comercio de ventas de bebidas que se llamará “AlCol Drinks”. La idea principal es alamacenar información primordial para luego ser procesada y estudiarla correctamente para así gestionar de mejor manera el comercio.

## Modelo de negocio
### 1. Propuesta de Valor
- **Productos de Alta Calidad**: Ofrecemos una variedad de bebidas premium, incluyendo bebidas alcohólicas y no alcohólicas, de las mejores marcas y productos tanto locales como importados.
- **Una Experiencia Única**: Siempre traeremos nuevos sabores para que nuestros clientes puedan probar productos que no se encuentran en la mayoria de locales.
- **Servicios Adicionales**: También se tiene la posibilidad de realizar un pedido a través de nuestro sitio web.

### 2. Segmentos de Clientes
- **Adultos Jóvenes y Profesionales**: Personas de a partir de 18 años que buscan bebidas premium o rara en el mercado.
- **Aficionados a las Bebidas**: Personas interesadas en probar nuevas bebidas de diferentes marcas o productos exclusivos.
- **Empresas y Eventos**: Organizaciones que necesitan bebidas para eventos corporativos o celebraciones.

### 3. Canales
- **Tienda Física**: Local físico ubicado en una zona estratégica para la mayor accesibilidad, cercana al centro de la ciudad.
- **Tienda en Línea**: Plataforma de comercio electrónico para pedidos y entregas a domicilio, con posibilidad de reservar si no tenermos stock de su producto deseado.
- **Redes Sociales y Marketing Digital**: Utilizamos Instagram, Facebook y otras plataformas para promocionar nuestros productos y eventos.

### 4. Relaciones con los Clientes
- **Atención Personalizada**: Servicio al cliente personalizado en la tienda.
- **Fidelización**: Programas de fidelización y descuentos para clientes recurrentes.
- **Interacción en Redes Sociales**: Respuesta activa a consultas y comentarios en nuestras plataformas de redes sociales.

### 5. Fuentes de Ingresos
- **Ventas Directas**: Venta de bebidas en la tienda física y en línea.
- **Venta de bebidas artesanales**: Ventas de nuestra marca de bebidas artesanales.
- **Suscripciones**: Ofrecemos cajas mensuales de bebidas seleccionadas para suscriptores.

### 6. Recursos Clave
- **Producto**: Stock de bebidas de alta calidad.
- **Personal**: Empleados capacitados en atención al cliente y conocimiento de bebidas.
- **Infraestructura**: Local de la tienda, sistemas de gestión de inventario, y plataforma de comercio electrónico.
- **Marca**: Una imagen de marca fuerte y llamativa.

### 7. Actividades Clave
- **Adquisición de Productos**: Gestión de proveedores y selección de bebidas.
- **Marketing y Promoción**: Campañas de marketing, promociones en redes sociales y eventos.
- **Gestión de Inventario**: Asegurarse de tener siempre un stock adecuado y fresco.
- **Atención al Cliente**: Proveer una excelente atención en la tienda y en línea.

### 8. Socios Clave
- **Proveedores de Bebidas**: Productores y distribuidores de bebidas alcohólicas y no alcohólicas.
- **Plataformas de Entrega**: Servicios de entrega para llevar productos a los clientes.
- **Influencers y Embajadores de Marca**: Colaboraciones para promocionar nuestros productos.

### 9. Estructura de Costos
- **Costos de Inventario**: Compra de bebidas.
- **Alquiler y Mantenimiento del Local**: Costos fijos de la tienda física.
- **Marketing y Publicidad**: Gastos en campañas y promociones.
- **Sueldos y Salarios**: Pago al personal de la tienda y empleados de soporte.
- **Tecnología**: Mantenimiento de la plataforma de comercio electrónico y sistemas de gestión.
- **Eventos**: Costos asociados a la organización y promoción de eventos.

## Diagrama entidad relacion (DER)
https://lucid.app/lucidchart/331835ff-dfaa-459f-a945-97ea39d964ce/edit?viewport_loc=-4908%2C-1364%2C13258%2C6184%2C0_0&invitationId=inv_39489e68-9218-4ab2-9fde-642c4184c549

## Listado de tablas y descripcion

### Tabla 1: Empleados

Esta tabla registra información de cada uno de los empleados y jefes de la empresa.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_empleado     | id_emp      | Entero       |                  | Primaria      | Sí      | Sí                         |
| nombre          | nom         | Texto        | 50               |               |         |                            |
| apellido        | ape         | Texto        | 50               |               |         |                            |
| puesto_actual   | pue_act     | Texto        | 250              |               |         |                            |
| horas_semanales | hrs_sem     | Entero       |                  |               |         |                            |
| salario_nominal | sal_nom     | Flotante     |                  |               |         |                            |

### Tabla 2: Clientes

Esta tabla almacenará información sobre los clientes que interactuaron de alguna forma con la empresa.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_cliente      | id_cli      | Entero       |                  | Primaria      | Sí      | Sí                         |
| nombre          | nom         | Texto        | 50               |               |         |                            |
| apellido        | ape         | Texto        | 50               |               |         |                            |

### Tabla 3: Informacion

Esta tabla almacena las ids de cada persona relacionada a la empresa sea cliente, empleado o jefe, para poder almacenar su informacion.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_info         | id_inf      | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_cliente      | id_cli      | Entero       |                  | Foránea       |         |                            |
| id_empleado     | id_emp      | Entero       |                  | Foránea       |         |                            |
| id_proveedor    | id_prov     | Entero       |                  | Foránea       |         |                            |

### Tabla 4: Informacion_Direcciones

Esta tabla registra las direcciones de facturación y de envío de cada persona o empresa que esté relacionada con nuestra empresa.

| Nombre de campo        | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|------------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_direccion           | id_dir      | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_info                | id_inf      | Entero       |                  | Foránea       | Sí      | Sí                         |
| pais                   | pais        | Texto        | 250              |               |         |                            |
| estado                 | est         | Texto        | 250              |               |         |                            |
| ciudad                 | ciud        | Texto        | 250              |               |         |                            |
| codigo_postal          | cod_pos     | Texto        | 250              |               |         |                            |
| dirección              | dir         | Texto        | 250              |               |         |                            |

### Tabla 5: Reclamos

Esta tabla almacena los reclamos de los clientes con su mensaje del cliente dentro y el estado, por ejemplo, si está resuelta o si sigue pendiente su consulta.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_reclamo      | id_rec      | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_cliente      | id_cli      | Entero       |                  | Foránea       | Sí      |                            |
| id_empleado     | id_emp      | Entero       |                  | Foránea       | Sí      |                            |
| numero_ticket   | num_tic     | Texto        | 100              |               |         |                            |
| mensaje         | men         | Texto        | 500              |               |         |                            |
| estado          | est         | Texto        | 20               |               |         |                            |

### Tabla 6: Proveedores

Esta tabla registra los datos de los proveedores que están contactándose con nuestra empresa o que en algún momento lo hicieron o lo harán.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_proveedor    | id_prov     | Entero       |                  | Primaria      | Sí      | Sí                         |
| nombre          | nom         | Texto        | 50               |               |         |                            |
| nota            | not         | Texto        | 250              |               |         |                            |
| estado          | est         | Texto        | 20               |               |         |                            |
| fecha_registo   | fech_reg    | Fecha        | 20               |               |         |                            |

### Tabla 7: Productos

Esta tabla registra cada producto de nuestro stock con sus precios, su proveedor, número de serie y cantidad de stock.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_producto     | id_prod     | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_proveedor    | id_prov     | Entero       |                  | Foránea       | Sí      |                            |
| id_categoria    | id_cat      | Entero       |                  | Foránea       | Sí      |                            |
| nombre          | nom         | Texto        | 50               |               |         |                            |
| descripcion     | desc        | Texto        | 250              |               |         |                            |
| precio          | pre         | Flotante     |                  |               |         |                            |
| costo           | cost        | Flotante     |                  |               |         |                            |
| stock           | sto         | Entero       |                  |               |         |                            |
| numero_serie    | num_ser     | Entero       |                  |               |         |                            |

### Tabla 8: Ventas

Esta tabla guarda todas las ventas, la fecha, si es un pedido (por el sitio web), su estado actual y el costo total.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_venta        | id_ven      | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_cliente      | id_cli      | Entero       |                  | Foránea       | Sí      |                            |
| id_empleado     | id_emp      | Entero       |                  | Foránea       | Sí      |                            |
| id_direccion    | id_dir      | Entero       |                  | Foránea       | Sí      |                            |
| fecha           | fech        | Fecha        | 50               |               |         |                            |
| pedido          | ped         | Booleano     |                  |               |         |                            |
| estado          | est         | Texto        | 20               |               |         |                            |
| total           | tot         | Flotante     |                  |               |         |                            |

### Tabla 9: Ventas_Productos

Esta tabla contiene el producto vendido y la cantidad.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave    | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|------------------|---------|----------------------------|
| id_productos_vendidos | id_prod_ven | Entero       |                  | Primaria         | Sí      | Sí                         |
| id_venta              | id_ven      | Entero       |                  | Foránea          | Sí      |                            |
| id_producto           | id_prod     | Entero       |                  | Foránea          | Sí      |                            |
| cantidad              | cant        | Entero       |                  |                  |         |                            |

### Tabla 10: Pedidos_Pendientes

Esta tabla registra los pedidos que tienen “pendiente” en su estado.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave    | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|------------------|---------|----------------------------|
| id_venta        | id_ven      | Entero       |                  | Primaria/Foránea | Sí      |                            |

### Tabla 11: Pedidos_Pagos

Esta tabla registra los pedidos que tienen “pago” en su estado y almacena la fecha del pago.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave    | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|------------------|---------|----------------------------|
| id_venta        | id_ven      | Entero       |                  | Primaria/Foránea | Sí      |                            |
| fecha           | fech        | Fecha        |                  |                  |         |                            |

### Tabla 12: Pedidos_Cancelados

Esta tabla registra los pedidos que tienen “cancelado” en su estado y almacena la fecha de la cancelación.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave    | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|------------------|---------|----------------------------|
| id_venta        | id_ven      | Entero       |                  | Primaria/Foránea | Sí      |                            
| fecha           | fech        | Fecha        |                  |                  |         |                            |

### Tabla 13: Pedidos_Viajando

Esta tabla registra los pedidos que tienen ‘’viajando’’ en su estado y almacena la fecha desde que está viajando.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave    | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|------------------|---------|----------------------------|
| id_venta        | id_ven      | Entero       |                  | Primaria/Foránea | Sí      |                            |
| fecha           | fech        | Fecha        |                  |                  |         |                            |

### Tabla 14: Pedidos_Entregados

Esta tabla almacena los pedidos que tienen su estado de “entregado” y también contiene la fecha en la que fue entregado.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave    | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|------------------|---------|----------------------------|
| id_venta        | id_ven      | Entero       |                  | Primaria/Foránea | Sí      |                            |
| fecha           | fech        | Fecha        |                  |                  |         |                            |

### Tabla 15: Reservas_Clientes

Esta tabla registra los datos de las reservas que los clientes realizaron, guardando la id del cliente, producto, reserva y también su estado de reserva.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_reserva_cliente    | Id_res_cli  | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_cliente            | id_cli      | Entero       |                  | Foránea       | Sí      |                            |
| fecha                 | fech        | Fecha        |                  |               |         |                            |
| estado                | est         | Texto        | 20               |               |         |                            |
| comentario            | come        | Texto        | 250              |               |         |                            |

### Tabla 16: Resumen_Ventas

Registra información previamente calculada sobre ventas de cada producto, se tiene la cantidad de ventas y la ganancia total de las ventas tanto en presencial como por pedidos y en general.

| Nombre de campo               | Abreviatura   | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-------------------------------|---------------|--------------|------------------|---------------|---------|----------------------------|
| id_resumen                    | Id_vent       | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_producto                   | id_prod       | Entero       |                  | Foránea       | Sí      |                            |
| cantidad_ventas_precencial    | cant_vent_pre | Entero       |                  |               |         |                            |
| beneficio_total_precencial    | gan_tot_pre   | Flotante     |                  |               |         |                            |
| cantidad_ventas_pedidos       | cant_vent_ped | Entero       |                  |               |         |                            |
| beneficio_total_pedidos       | gan_tot_pre   | Flotante     |                  |               |         |                            |
| cantidad_ventas_general       | cant_vent_gen | Entero       |                  |               |         |                            |
| beneficio_total_general       | gan_tot_gen   | Flotante     |                  |               |         |                            |

### Tabla 17: Categorias_Productos

Esta tabla registra las posibles categorias que se le puede asignar a cada producto y una descripcion de cada categoria.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_categoria    | Id_cat      | Entero       |                  | Primaria      | Sí      | Sí                         |
| categoria       | cat         | Texto        | 50               |               |         |                            |
| descripcion     | desc        | Texto        | 250              |               |         |                            |

### Tabla 18: Reservas_Proveedores

Esta tabla registra las reservas que realiza nuestra empresa hacia nuestros proveedores.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_reserva_proveedor  | id_res_prov | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_proveedor          | id_prov     | Entero       |                  | Foránea       | Sí      |                            |
| fecha                 | fech        | Fecha        |                  |               |         |                            |
| estado                | est         | Texto        | 20               |               |         |                            |
| comentario            | come        | Texto        | 250              |               |         |                            |

### Tabla 19: Productos_Reservados

Esta tabla registra los productos que fueron reservados por alguna de las reservas que se realizaron, ya sea desde nuestra empresa a los proveedores, tanto como desde nuestros clientes hacia nosotros, almacenando asi informacion de un el producto y la cantidad reservada.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_producto_reservado | id_prod_res | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_proveedor          | id_prov     | Entero       |                  | Foránea       | Sí      |                            |
| id_reserva_cliente    | Id_res_cli  | Entero       |                  | Foránea       | Sí      |                            |
| id_producto           | id_prod     | Entero       |                  | Foránea       | Sí      |                            |
| cantidad              | cant        | Entero       |                  |               |         |                            |

### Tabla 20: Informacion_Contacto

Esta tabla registra toda la informacion de contacto de cada entidad, sea cliente, empleado o proveedor. Incluye correo electronico, numero de telefono, numero de celular, redes sociales y sitios web.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_info               | id_info     | Entero       |                  | Primaria      | Sí      | Sí                         |
| telefono              | tel         | EnteroGrande |                  |               |         |                            |
| celular               | cel         | Texto        | 20               |               |         |                            |
| email                 | em          | Texto        | 250              |               |         |                            |
| linkedin              | link        | Texto        | 250              |               |         |                            |
| instagram             | inst        | Texto        | 250              |               |         |                            |
| facebook              | face        | Texto        | 250              |               |         |                            |
| twitter               | twit        | Texto        | 250              |               |         |                            |
| youtube               | yout        | Texto        | 250              |               |         |                            |
| tiktok                | tikt        | Texto        | 250              |               |         |                            |
| sitio_web             | web         | Texto        | 250              |               |         |                            |

### Tabla 21: Informacion_Cuenta

Esta tabla registra los datos de los usuarios de nuestro sitio web que se hayan registrado, almacenando su email, contraseña, ultima sesion, fecha de creacion, rol, codigos, etc.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_cuenta             | id_cuen     | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_info               | id_info     | Entero       |                  | Foránea       | Sí      |                            |
| clave                 | clav        | Texto        | 250              |               |         |                            |
| nombre                | nom         | Texto        | 50               |               |         |                            |
| apellido              | ape         | Texto        | 50               |               |         |                            |
| fecha_registro        | fech_reg    | Fecha        |                  |               |         |                            |
| ultimo_acceso         | ult_acce    | Fecha        |                  |               |         |                            |
| estado                | est         | Texto        | 20               |               |         |                            |
| rol                   | rol         | Texto        | 20               |               |         |                            |
| codigo_verificacion   | cod_ver     | Texto        | 20               |               |         |                            |
| codigo_recuperacion   | cod_rec     | Texto        | 20               |               |         |                            |

### Tabla 22: Informacion_Facturacion

Esta tabla registra la informacion de facturacion de cada entidad, sea cliente, empleado o proveedor. En esta se almacena el metodo de pago, datos de tarjeta, direccion de facturacion, nombre y apellido del propietario de la tarjeta (En caso del proveedor, la informacion sera de nuestro metodo de pago).

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_direccion          | id_dir      | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_info               | id_info     | Entero       |                  | Foránea       | Sí      |                            |
| metodo_pago           | met_pag     | Texto        | 20               |               |         |                            |
| numero_tarjeta        | num_tarj    | EnteroGrande |                  |               |         |                            |
| fecha_expedicion      | fech_exp    | Fecha        |                  |               |         |                            |
| cvv                   | cvv         | Entero       | 10               |               |         |                            |
| nombre_propietario    | nom_prop    | Texto        | 50               |               |         |                            |
| apellido_propietario  | ape_prop    | Texto        | 50               |               |         |                            |


## Estructura e ingesta de datos

Se realiza mediante el script [population.sql](https://github.com/Alexmp19/CoderHouse-SQL/blob/main/structure/population.sql)

## Objetos de la base de datos

### Funciones:

#### Función 1: calcular_iva

Esta función toma el precio de un producto y calcula el Impuesto al Valor Agregado (IVA) que se debe aplicar. En este caso, la tasa de IVA es del 22%, que es la tasa estándar en Uruguay.

El objetivo principal es automatizar el cálculo del IVA para asegurar que todos los precios de los productos incluyan el impuesto correspondiente, facilitando el proceso de facturación y garantizando la exactitud de los precios mostrados al cliente.

No interactúa directamente con tablas, pero es utilizada en vistas como `v_precio_productos_iva` para mostrar el precio con IVA.

#### Función 2: calcular_beneficio

Esta función calcula el beneficio neto de un producto restando el costo del producto de su precio de venta. Esto ayuda a determinar cuánto se gana por cada unidad vendida.

El objetivo principal es facilitar el análisis de rentabilidad de los productos, permitiendo a la empresa identificar cuáles productos generan más ganancias.

No interactúa directamente con tablas, pero es útil en análisis financieros y de rentabilidad.

#### Función 3: calcular_rentabilidad

Esta función calcula la rentabilidad de un producto basado en sus ventas generales, sumando los ingresos de ventas y restando el costo total para obtener la rentabilidad.

El objetivo principal es evaluar la rentabilidad de un producto en función de las ventas totales, ayudando a identificar productos más y menos rentables.

Interactúa con las tablas `Ventas_Productos` y `Productos` para sumar las ventas y los costos de un producto específico.

#### Función 4: calcular_ventas_lapso

Esta función calcula el número de ventas realizadas entre dos fechas específicas.

Su objetivo principal es permitir la evaluación del rendimiento de ventas durante un período específico para análisis de desempeño y planificación.

Interactúa con la tabla `Ventas` para contar el número de registros de ventas entre las fechas especificadas.

#### Función 5: calcular_total_lapso

Esta función calcula el total de ingresos generados entre dos fechas específicas, sumando los totales de todas las ventas realizadas en ese período.

El objetivo principal es proporcionar una visión clara de los ingresos generados en un período específico, útil para informes financieros y análisis de rendimiento.

Interactúa con la tabla `Ventas` para sumar los totales de las ventas entre las fechas especificadas.

### Procedimientos Almacenados:

#### Procedimiento 1: sp_actualizar_cantidad_resumen_ventas

Este procedimiento almacenado actualiza la cantidad de ventas de un producto en la tabla `Resumen_Ventas`, diferenciando entre ventas presenciales y pedidos.

Su objetivo principal es mantener un registro actualizado y preciso de las ventas, diferenciando entre ventas presenciales y pedidos, para facilitar el análisis de ventas.

Interactúa con la tabla `Resumen_Ventas`, actualizando las columnas `cantidad_ventas_pedidos`, `cantidad_ventas_presencial` y `cantidad_ventas_general` según el tipo de venta.

#### Procedimiento 2: sp_actualizar_total_resumen_ventas

Este procedimiento almacenado actualiza el total de beneficios de un producto en la tabla `Resumen_Ventas`, diferenciando entre ventas presenciales y pedidos.

Su objetivo principal es mantener un registro preciso de los beneficios, diferenciando entre ventas presenciales y pedidos, para un mejor análisis financiero.

Interactúa con la tabla `Resumen_Ventas` para actualizar los beneficios totales.

#### Procedimiento 3: sp_actualizar_total_ventas

Este procedimiento almacenado actualiza el total de una venta basada en los productos vendidos y sus cantidades.

Su objetivo principal es asegurar que el total de una venta refleje el costo correcto de todos los productos vendidos, proporcionando información precisa para informes y análisis financieros.

Interactúa con las tablas `Ventas` y `Ventas_Productos` para calcular y actualizar el total de una venta.

#### Procedimiento 4: sp_registrar_venta_id

Este procedimiento almacenado registra una nueva venta utilizando un ID de cliente existente. Inserta una nueva venta en la tabla `Ventas` y los productos vendidos en la tabla `Ventas_Productos`.

Su objetivo principal es facilitar la inserción de nuevas ventas para clientes ya registrados, simplificando el proceso de ventas y asegurando la consistencia de los datos.

Interactúa con las tablas `Ventas` y `Ventas_Productos`.

#### Procedimiento 5: sp_registrar_venta_nueva

Este procedimiento almacenado registra una nueva venta y un nuevo cliente simultáneamente. Inserta los datos del cliente en la tabla `Clientes`, luego registra la venta en `Ventas` y los productos vendidos en `Ventas_Productos`.

Su objetivo principal es facilitar la inserción simultánea de nuevos clientes y ventas, mejorando la eficiencia del proceso de ventas.

Interactúa con las tablas `Clientes`, `Ventas` y `Ventas_Productos`.

#### Procedimiento 6: sp_ingresar_empleado

Este procedimiento almacenado inserta un nuevo registro en la tabla `Empleados` con los datos del empleado proporcionados como parámetros.

Su objetivo principal es facilitar la inserción de nuevos empleados, asegurando que los datos se registren de manera consistente y eficiente.

Interactúa con la tabla `Empleados`.

#### Procedimiento 7: sp_ingresar_producto

Este procedimiento almacenado inserta un nuevo producto o actualiza el stock si el producto ya existe en la base de datos.

Su objetivo principal es facilitar la gestión del inventario de productos, permitiendo agregar nuevos productos o actualizar el stock existente de manera eficiente.

Interactúa con la tabla `Productos`.

#### Procedimiento 8: sp_mostrar_ventas_lapso

Este procedimiento almacenado muestra la cantidad de ventas y el total de ventas realizadas entre dos fechas específicas.

Su objetivo principal es proporcionar una visión clara del rendimiento de ventas durante un período específico, útil para informes y análisis de desempeño.

Interactúa con las tablas `Ventas` y `Ventas_Productos` para calcular las ventas y los totales en el período especificado.

### Triggers:

#### Trigger 1: copiar_datos_desde_empleados

Este trigger copia el ID del empleado en la tabla `Datos` después de insertar un nuevo empleado.

Su objetivo principal es mantener actualizada la tabla `Datos` con los nuevos empleados.

Evento: AFTER INSERT en la tabla `Empleados`

#### Trigger 2: copiar_datos_desde_clientes

Este trigger copia el ID del cliente en la tabla `Datos` después de insertar un nuevo cliente.

Su objetivo principal es mantener actualizada la tabla `Datos` con los nuevos clientes.

Evento: AFTER INSERT en la tabla `Clientes`

#### Trigger 3: copiar_producto_resumen_ventas

Este trigger se activa después de que se inserta un nuevo producto en la tabla `Productos`. Su propósito es crear un registro correspondiente en la tabla `Resumen_Ventas`.

Su objetivo principal es asegurar que cada nuevo producto tenga un resumen de ventas correspondiente.

Evento: AFTER INSERT en la tabla `Productos`

#### Trigger 4: agregar_pendiente

Este trigger inserta una venta pendiente en la tabla `Pedidos_Pendientes` antes de insertar una nueva venta si el pedido es verdadero.

Su objetivo principal es mantener actualizada la tabla de pedidos pendientes.

Utiliza las tablas: `Ventas`, `Pedidos_Pendientes`

#### Trigger 5: actualizar_total_ventas

Este trigger se activa después de insertar una nueva venta de productos en la tabla `Ventas_Productos`. Su objetivo es actualizar el total de ventas en la tabla `Ventas`.

Su objetivo principal es actualizar el total de ventas para reflejar los nuevos productos vendidos.

Evento: AFTER INSERT en la tabla `Ventas_Productos`

#### Trigger 6: actualizar_resumen_ventas

Este trigger se activa después de insertar una nueva venta de productos en la tabla `Ventas_Productos`. Su función es actualizar el resumen de ventas en la tabla `Resumen_Ventas`.

Su objetivo principal es actualizar el resumen de ventas para reflejar las nuevas ventas de productos.

Evento: AFTER INSERT en la tabla `Ventas_Productos`

#### Trigger 7: actualizar_estado_pendiente

Este trigger se activa después de insertar un nuevo registro en la tabla `Pedidos_Pendientes`. Su objetivo es actualizar el estado de la venta correspondiente en la tabla `Ventas` a "pendiente".

Su objetivo principal es actualizar el estado de las ventas pendientes en la tabla `Ventas`.

Evento: AFTER INSERT en la tabla `Pedidos_Pendientes`

#### Trigger 8: actualizar_estado_cancelado

Este trigger se activa después de insertar un nuevo registro en la tabla `Pedidos_Cancelados`. Su función es actualizar el estado de la venta correspondiente en la tabla `Ventas` a "cancelado" y eliminar el pedido pendiente.

El objetivo principal es actualizar el estado de las ventas canceladas en la tabla `Ventas` y eliminar los pedidos pendientes asociados.

Evento: AFTER INSERT en la tabla `Pedidos_Cancelados`

#### Trigger 9: actualizar_estado_pago

Este trigger se activa después de insertar un nuevo registro en la tabla `Pedidos_Pagos`. Su propósito es actualizar el estado de la venta correspondiente en la tabla `Ventas` a "pago" y eliminar el pedido pendiente.

Su objetivo principal es actualizar el estado de las ventas pagadas en la tabla `Ventas` y eliminar los pedidos pendientes asociados.

Evento: AFTER INSERT en la tabla `Pedidos_Pagos`

#### Trigger 10: actualizar_estado_viajando

Este trigger se activa después de insertar un nuevo registro en la tabla `Pedidos_Viajando`. Su función es actualizar el estado de la venta correspondiente en la tabla `Ventas` a "viajando".

Su objetivo es actualizar el estado de las ventas en tránsito en la tabla `Ventas`.

Evento: AFTER INSERT en la tabla `Pedidos_Viajando`

#### Trigger 11: actualizar_estado_entregado

Este trigger se activa después de insertar un nuevo registro en la tabla `Pedidos_Entregados`. Su objetivo es actualizar el estado de la venta correspondiente en la tabla `Ventas` a "entregado" y eliminar el registro de `Pedidos_Viajando` asociado.

Su objetivo principal es actualizar el estado de las ventas entregadas en la tabla `Ventas` y eliminar los registros de `Pedidos_Viajando` asociados.

Evento: AFTER INSERT en la tabla `Pedidos_Entregados`

### Vistas:

#### Vista 1: v_productos_proveedores

Esta vista nos muestra un INNER JOIN entre las tablas `Proveedores` y `Productos` de modo que nos muestra las ids de los productos, las ids de los proveedores, los nombres de los proveedores, los nombres de los productos, los precios, cantidad de stock y número de serie de los productos.

El objetivo principal de esta vista es proporcionar los proveedores y productos en la misma tabla para poder identificar de qué proveedor provienen los productos y su stock.

#### Vista 2: v_precio_productos_iva

Esta vista nos muestra información de la tabla `Productos`, de la cual se muestran las columnas: id_producto, nombre y precio, pero además se hace uso de la función `calcular_iva` para obtener el IVA de ese producto y además se utiliza la función `FORMAT` para darle un formato de solamente 2 cifras después de la coma, y de igual forma para la última columna que es igual a la anterior pero su único cambio es que dentro de la función `FORMAT` se le suma su precio nuevamente para obtener así el precio del producto con el IVA aplicado.

El objetivo principal de esta vista es calcular el IVA de los productos y mostrar el precio sin y con el IVA sumado. (El IVA calculado es del 22% que la tasa normal en Uruguay)

#### Vista 3: v_venta_completa

Esta vista nos muestra información de la tabla `Ventas` y la tabla `Productos` a través de un INNER JOIN, de este modo nos muestra una tabla con las columnas: id_producto_vendido, id_venta, id_cliente, id_producto, cantidad, total, fecha, pedido y estado.

El objetivo principal de esta vista es brindarnos toda la información sobre cada venta para poder buscar en los registros fácilmente la venta que buscamos y su información.

#### Vista 4: v_mas_vendidos

Esta vista nos muestra los 10 productos más vendidos, incluyendo las columnas: id_resumen, nombre (de la tabla `Productos`), cantidad de ventas, total recaudado, precio unitario, costo y stock de los productos.

El objetivo principal de esta vista es identificar los productos más populares y rentables, facilitando decisiones de inventario y estrategias de marketing.

#### Vista 5: v_rentabilidad_productos

Esta vista nos muestra la rentabilidad de cada producto en función de los costos asociados, considerando las ventas en general, presenciales y por pedidos. Las columnas incluyen: id_producto, nombre, rentabilidadTotal, rentabilidadPresencial y rentabilidadPedidos.

El objetivo principal de esta vista es evaluar la rentabilidad de los productos en diferentes modalidades de venta, permitiendo optimizar la estrategia comercial.

#### Vista 6: v_historial_compras_clientes

Esta vista nos muestra el historial de compras de cada cliente, incluyendo productos comprados, fechas, montos gastados, estado de la compra, cantidad de productos y número de serie del producto. Las columnas incluyen: id_venta, id_cliente, nombre (del cliente), apellido, estado, fecha, id_producto, cantidad, precio_producto, total_pedido y numero_serie.

El objetivo principal de esta vista es proporcionar un registro detallado de las compras de cada cliente para análisis y mejor servicio al cliente.

#### Vista 7: v_estado_pedidos

Esta vista nos muestra los productos pedidos, el estado de los pedidos y la fecha en la que se cambió el estado por última vez. Las columnas incluyen: id_cliente, id_venta, id_producto, nombre (del producto), estado y fecha.

El objetivo principal de esta vista es rastrear el estado actual de los pedidos y cuándo se realizaron los últimos cambios, facilitando la gestión de pedidos.

#### Vista 8: v_pedidos_pendientes

Esta vista nos muestra una unión entre las tablas `Ventas`, `Ventas_Productos`, `Clientes` y `Productos` a través de varios INNER JOIN, para de esta forma mostrarnos las columnas: id_producto_vendido, id_venta, id_cliente, nombre (tabla `Clientes`), apellido (tabla `Clientes`), id_producto, nombre (tabla `Productos`) y numero_serie.

El objetivo principal de esta vista es mostrarnos solamente los productos con estado de ‘pendiente’, para saber así el nombre y la id de la persona y los productos que pidió en ese pedido.

## Roles y permisos



## Back up de la base de datos

El respaldo de la base de datos se encuentra en un sólo script llamado [backup.sql]()

## Herramientas y tecnologias usadas

## Como levantar el proyecto en CodeSpaces GitHub
* env: Archivo con contraseñas y data secretas
* Makefile: Abstracción de creacción del proyecto
* docker-compose.yml: Permite generar las bases de datos en forma de contenedores

#### Pasos para arrancar el proyecto

* En la terminal de linux escribir :
    - `make` _si te da un error de que no conexion al socket, volver al correr el comando `make`_
    - `make clean-db` limpiar la base de datos
    - `make test-db` para mirar los datos de cada tabla
    - `make backup-db` para realizar un backup de mi base de datos
    - `make access-db` para acceder a la base de datos

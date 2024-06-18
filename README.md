# Proyecto Final SQL CoderHouse

**Creador:** Kevin Alex Muñoz Pascal

**Comisión:** 53180

## Temática del Proyecto

Mi proyecto es una base de datos MySQL para mi proyecto de comercio de ventas de bebidas que se llamará “AlCol Drinks”. La idea principal es alamacenar información primordial para luego ser procesada y estudiarla correctamente para así gestionar de mejor manera el comercio.

## El Problema

Nuestro proyecto de tienda necesita implementar un sistema de distribución para que los proveedores se contacten con nuestros encargados en esa área y también es preciso encontrar una forma de administrar y controlar los pedidos. Es necesario un sistema parecido para poder gestionar los envíos a nuestros clientes y almacenar información sobre ellos. Por último, sería útil almacenar información sobre nuestra empresa y empleados en caso de extravío de sus contactos, y para tener mayor control de stock y precios.

https://lucid.app/lucidchart/331835ff-dfaa-459f-a945-97ea39d964ce/edit?viewport_loc=1519%2C1905%2C1159%2C540%2C0_0&invitationId=inv_39489e68-9218-4ab2-9fde-642c4184c549

## Descripción de Tablas

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

| Nombre de campo     | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave    | No nulo | Incrementa automáticamente |
|---------------------|-------------|--------------|------------------|------------------|---------|----------------------------|
| id_venta            | id_ven      | Entero       |                  | Primaria/Foránea | Sí      |                            |
| id_producto         | id_prod     | Entero       |                  | Foránea          | Sí      |                            |
| cantidad            | cant        | Entero       |                  |                  |         |                            |

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

### Tabla : Categorias_Productos

Esta tabla registra las posibles categorias que se le puede asignar a cada producto y una descripcion de cada categoria.

| Nombre de campo | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_categoria    | Id_cat      | Entero       |                  | Primaria      | Sí      | Sí                         |
| categoria       | cat         | Texto        | 50               |               |         |                            |
| descripcion     | desc        | Texto        | 250              |               |         |                            |

### Tabla : Reservas_Proveedores

Esta tabla registra las reservas que realiza nuestra empresa hacia nuestros proveedores.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_reserva_proveedor  | id_res_prov | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_proveedor          | id_prov     | Entero       |                  | Foránea       | Sí      |                            |
| fecha                 | fech        | Fecha        |                  |               |         |                            |
| estado                | est         | Texto        | 20               |               |         |                            |
| comentario            | come        | Texto        | 250              |               |         |                            |

### Tabla : Productos_Reservados

Esta tabla registra los productos que fueron reservados por alguna de las reservas que se realizaron, ya sea desde nuestra empresa a los proveedores, tanto como desde nuestros clientes hacia nosotros, almacenando asi informacion de un el producto y la cantidad reservada.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_producto_reservado | id_prod_res | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_proveedor          | id_prov     | Entero       |                  | Foránea       | Sí      |                            |
| id_reserva_cliente    | Id_res_cli  | Entero       |                  | Foránea       | Sí      |                            |
| id_producto           | id_prod     | Entero       |                  | Foránea       | Sí      |                            |
| cantidad              | cant        | Entero       |                  |               |         |                            |

### Tabla : Informacion_Contacto

Esta tabla registra toda la informacion de contacto de cada entidad, sea cliente, empleado o proveedor. Incluye correo electronico, numero de telefono, numero de celular, redes sociales y sitios web.

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_info               | id_info     | Entero       |                  | Primaria      | Sí      | Sí                         |
| telefono              | tel         | Entero       |                  |               |         |                            |
| celular               | cel         | Entero       |                  |               |         |                            |
| email                 | em          | Texto        | 250              |               |         |                            |
| linkedin              | link        | Texto        | 250              |               |         |                            |
| instagram             | inst        | Texto        | 250              |               |         |                            |
| facebook              | face        | Texto        | 250              |               |         |                            |
| twitter               | twit        | Texto        | 250              |               |         |                            |
| youtube               | yout        | Texto        | 250              |               |         |                            |
| tiktok                | tikt        | Texto        | 250              |               |         |                            |
| sitio_web             | web         | Texto        | 250              |               |         |                            |

### Tabla : Informacion_Cuenta

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

### Tabla : Informacion_Facturacion

Esta tabla registra la informacion de facturacion de cada entidad, sea cliente, empleado o proveedor. En esta se almacena el metodo de pago, datos de tarjeta, direccion de facturacion, nombre y apellido del propietario de la tarjeta (En caso del proveedor, la informacion sera de nuestro metodo de pago).

| Nombre de campo       | Abreviatura | Tipo de dato | Longitud de dato | Tipo de clave | No nulo | Incrementa automáticamente |
|-----------------------|-------------|--------------|------------------|---------------|---------|----------------------------|
| id_direccion          | id_dir      | Entero       |                  | Primaria      | Sí      | Sí                         |
| id_info               | id_info     | Entero       |                  | Foránea       | Sí      |                            |
| metodo_pago           | met_pag     | Texto        | 20               |               |         |                            |
| numero_tarjeta        | num_tarj    | Entero       |                  |               |         |                            |
| fecha_expedicion      | fech_exp    | Fecha        |                  |               |         |                            |
| cvv                   | cvv         | Entero       | 10               |               |         |                            |
| nombre_propietario    | nom_prop    | Texto        | 50               |               |         |                            |
| apellido_propietario  | ape_prop    | Texto        | 50               |               |         |                            |



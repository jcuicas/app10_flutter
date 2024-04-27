# app10

Un nuevo proyecto de Flutter.

## Empezando

Este proyecto es un punto de partida para una aplicación Flutter.

Algunos recursos para ayudarte a comenzar si este es tu primer proyecto de Flutter:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

Para obtener ayuda para comenzar con el desarrollo de Flutter, consulte la
[online documentation](https://docs.flutter.dev/), que ofrece tutoriales,
ejemplos, orientación sobre desarrollo móvil y una referencia API completa.

## Vista previa de la app10 - Consumir una API desde Supabase

## Código de la primera pantalla

![](img/pantalla1.png)

![](img/pantalla2.png)

![](img/pantalla3.png)

![](img/pantalla4.png)

![](img/pantalla5.png)

![](img/pantalla6.png)

![](img/pantalla7.png)

![](img/pantalla8.png)

![](img/pantalla9.png)

![](img/pantalla10.png)

![](img/pantalla11.png)

![](img/pantalla12.png)

![](img/pantalla13.png)

## Crear una carpeta models y construir la clase Cliente

![](img/pantalla14.png)

![](img/pantalla15.png)

## Instalar la dependecia de supabase_flutter

Para instalar la dependencia visite la siguiente URL:

- [ https://pub.dev/ ](https://pub.dev/)

![](img/pantalla16.png)

![](img/pantalla17.png)

![](img/pantalla18.png)

![](img/pantalla19.png)

![](img/pantalla20.png)

![](img/pantalla21.png)

![](img/pantalla22.png)

## Rediseñar el método main() para usar la dependecia de supabase_flutter

![](img/pantalla23.png)

## Extraer el cliente Supabase en una variable para usos posteriores

![](img/pantalla24.png)

## Crear una propiedad de tipo future y un método que retorne un future

![](img/pantalla25.png)

## Traer el método initState() y llamar el método obtenerClientes().
### Asignar a el future listaClientes el método obtenerClientes() en el initState().

![](img/pantalla26.png)

### En la propiedad body del HomeScreen crear el widget FutureBuilder.
### Crer un método verClientes() que va a retornar una lista de widgets.

![](img/pantalla27.png)

![](img/pantalla28.png)

### Agregar a la lista de widgets clientes un Card() con un hijo ListTile() que se va retornar.

![](img/pantalla29.png)

![](img/pantalla30.png)

### Agregar las propiedades leading y trailing al ListTile().
### Construimos el CircleAvartar().

![](img/pantalla31.png)

![](img/pantalla32.png)
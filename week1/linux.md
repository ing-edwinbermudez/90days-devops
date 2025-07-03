

## Comandos en Linux

**uname**

El comando `uname -a` en sistemas Unix/Linux muestra información detallada del sistema operativo. La opción `-a` (abreviación de all) muestra toda la información disponible.

```markdown
uname -a
```
![alt text](image.png)

**whoami**

El comando `whoami` en sistemas Unix/Linux (y también en Windows) muestra **el nombre del usuario actualmente autenticado** en la sesión del terminal.

```markdown
whoami
```
![alt text](image-1.png)

Ejemplo de script simple para validar si estas usuando el usuario root

```
cat << whoami.sh >> EOF
#!/bin/bash
if [ "$(whoami)" = "root" ]; then
    echo "Tienes sesion con el usuario root"
else
    echo "No tienes sesion con usuario root, estas con el usuario '$(whoami)'"
fi
EOF
```

Asignar permisos de ejecucion al script
```
chmod +x whoami.sh
```

Ejecutar el script
```
./whoami.sh
```
# Creando una cuenta que sea admin de un directorio

echo -n "Enter the username for the new user:"
read username

# Aqui se verifica que exista el username
getent passwd $username >> /dev/null

# Si sí existe creamos otro.
while [ $? -eq 0 ] do
  echo -n "User already created \n"
  echo -n "Please enter another username: "
  read username 
  getent passwd $username >> /dev/null
done

# Creamos un grupo para alojar al usuario
echo -n "Enter a group name: \n"
read groupname

getent group $groupname >> /dev/null

# Si el grupo ya existía, creamos otro grupo
while [ $? -eq 0 ] do
  echo -e "Group already exists\n"
  echo -e "Please enter another group name: \n"
  read groupname
  getent group $groupname >> /dev/null
done

# Aquí se crea el grupo
groupadd $groupname

# Creamos el usuario con su shell de bash y lo agregamos al grupo
useradd -m -s /bin/bash -g $groupname $username
passwd $username

echo -n "User created\n"

# Creamos el directorio con su nombre en root
mkdir /$username

# Ponemos a username como owner del directorio
chown $username.$groupname /$username

# Cambiamos los permisos del directorio agregando el sticky bit. Ahora solo los dueños de cada file en el directorio serán los unicos que podrán borrar sus files, aparte del root.
chmod 1770 /$username

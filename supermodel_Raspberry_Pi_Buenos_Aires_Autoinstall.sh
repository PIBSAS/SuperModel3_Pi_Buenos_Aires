#!/bin/bash
echo "Que vago nene! :)"
cd
git clone https://github.com/Luciano2018/SuperModel3_Pi_Buenos_Aires.git
echo "Nos movemos a la carpeta que clonamos"
cd SuperModel3_Pi_Buenos_Aires
echo "Necesitamos crear unas carpetas..."
sudo mkdir /opt/retropie/emulators/supermodel
sudo mkdir /opt/retropie/emulators/supermodel/bin
echo "Creadas! Ahora movemos el emulador a la carpeta bin"
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/supermodel /opt/retropie/emulators/supermodel/bin/
echo "Y ya que estamos el resto, dale?..Si, obvio!"
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/Config /opt/retropie/emulators/supermodel/bin
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/NVRAM /opt/retropie/emulators/supermodel/bin
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/Saves /opt/retropie/emulators/supermodel/bin
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/Shaders /opt/retropie/emulators/supermodel/bin
echo "Muy buen trabajo, ponele :)"
echo "Creamos la carpeta model3 para las configuraciones de Retropie"
sudo mkdir /opt/retropie/configs/model3
echo "Movemos los archivos a la nueva carpeta"
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/emulators.cfg /opt/retropie/configs/model3/
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/retroarch.cfg /opt/retropie/configs/model3/
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/joystick-selection.cfg /opt/retropie/configs/model3/
echo "Creamos enlaces simbolicos para la carpeta Config y NVRAM"
cd
sudo ln -s /opt/retropie/emulators/supermodel/bin/Config Config
sudo ln -s /opt/retropie/emulators/supermodel/bin/NVRAM NVRAM
echo "Damos permisos 755 a los directorios bin y Config"
sudo chmod 755 -R /opt/retropie/emulators/supermodel/bin
sudo chmod 755 -R $HOME/Config
echo "Bien hecho!!! Es hora de Emulationstation"
echo "Creamos un hogar para nuestras Roms de Sega Model 3"
cd
mkdir $HOME/RetroPie/roms/model3
echo "Recuerda extension .zip!!!"
echo
echo "Agregamos Sega Model 3 al menu de Emulationstation"
echo
echo "Ahora reemplazaras el archivo es_systems.cfg por el mio"
echo 
echo "Te Comparto el mio, si tienes tu sistema personalizado hazlo a mano"
echo
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/es_systems.cfg /etc/emulationstation/es_systems.cfg
echo "Movemos la carpeta model3 para que nuestro menu tenga un theme propio" 
sudo mv $HOME/SuperModel3_Pi_Buenos_Aires/model3 /etc/emulationstation/themes/carbon/
echo
echo "Hagamos limpieza de nuestro Home, asi tienes espacio para roms"
echo
echo "Listo!!!"
echo
echo "Si todo ha ido bien, a disfrutar, recuerda bajarte los juegos"
echo
echo "Te saluda Raspberry Pi Buenos Aires"
echo
rm -rf $HOME/SuperModel3_Pi_Buenos_Aires
echo
sudo reboot
echo "Adeus"

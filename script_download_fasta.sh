# Para descargar links en directorio creado
#------------------------------------------


#Crea directorio
mkdir fasta_files_nema


#Ciclo que extrae los datos del archivo $1 la columna 2 (-f2) y ejecuta el wget -P que Permite la descarga de los links de nuestra lista  $1 y con -P permitió que en la carpeta creada se almacenen os archivos FASTA descargados de los links.
for x in $(cut -f2 $1)
do
wget -P fasta_files_nema $x
done

#Permite descomprimir archivos
gzip -d fasta_files_nema/*.gz


#Permite corres orthofinder con el directorio de ariba
/opt/OrthoFinder-2.2.6/orthofinder -f fasta_files_nema

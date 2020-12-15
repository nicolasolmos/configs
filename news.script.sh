# script para obtener titulares de la seccion politica del diario Clarin

curl https://www.clarin.com/politica/ --output clarin.politica.html
grep '<h3>.*</h3>\|<h2>.*<\h2>' clarin.politica.html > titulos.clarin.politica.html
sed 's/<h3>//' titulos.clarin.politica.html > procesado.clarin.politica.html
sed 's/<\/h3//' procesado.clarin.politica.html > segundo.clarin.politica.html
cat segundo.clarin.politica.html | tr ">" "\n" > tercero.procesado.clarin.politica.html

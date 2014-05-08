
# kappa
kappa

rm pgplot.ps*
gdset /ACPS

linplot g34ts \
  style='"color=black,drawtitle=0"'

epstopdf pgplot.ps
pdfcrop pgplot.pdf g34ts.pdf
rm pgplot.ps pgplot.pdf

gdset xw



# kappa
kappa

# Set AST digits() attribute to 6 for plotting

rm pgplot.ps*
gdset /AVCPS

display 'g34(~200,~200)' mode=scale low=-0.0006 high=0.004 lut=${KAPPA_DIR}/cubehelix0_lut.sdf \
  margin=! \
  style="'color=black,colour(ticks)=white,drawtitle=0,textlab(1)=1,textlabgap(2)=0,textlabgap(1)=0.03'"

contour g34 noclear style=color=black ncont=4 firstcnt=0.005 stepcnt=0.004 mode=lin nokey

epstopdf pgplot.ps
pdfcrop pgplot.pdf g34.pdf
rm pgplot.ps pgplot.pdf

gdset xw


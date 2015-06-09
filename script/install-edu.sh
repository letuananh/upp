#!/usr/bin/sh

apt-get install -y octave R freemind dia

# Install LaTeX packages
apt-get -y install texlive texlive-latex texlive-xetex texworks
apt-get -y install texlive-collection-latex
apt-get -y install texlive-collection-latexrecommended
apt-get -y install texlive-xetex-def
apt-get -y install texlive-collection-xetex
# yum -y install texlive-collection-latexextra
# Source: http://mednis.info/wp/?p=63
apt-get install -y texlive-{subfigure,frcursive,was,titlesec,sectsty,biblatex,bbm-macros,subfig,multirow,comment,relsize,arydshln,was,wrapfig,lastpage,endfloat,nonfloat,mathabx,mathabx-type1,sttools,yfonts,apacite,expex,upquote,apa,biblatex-mla,natbib,tikz-qtree,tikz-dependency}

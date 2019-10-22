#! /bin/bash
./bootstrap
echo "asp mark5 guppi dummy vdif sigproc fits lwa" > backends.list
./configure --prefix=$PREFIX --disable-local --enable-shared \
  --with-Qt-dir=no \
  PGPLOT_DIR=$PREFIX/include/pgplot
make -j2
make install

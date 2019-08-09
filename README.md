# PaRSEC_LA
This repository contains a block-based LU factorization implemented in PaRSEC

# Installation
```
git clone https://github.com/jgurhem/PaRSEC_LA.git
cd PaRSEC_LA
mkdir build
cd build
cmake ..
```

# Run
`mpirun -n <nb_cores> build/lu <datasize> <blocksize>`


# License

[![License](http://img.shields.io/:license-mit-blue.svg?style=flat-square)](http://badges.mit-license.org)

- **[MIT license](http://opensource.org/licenses/mit-license.php)**

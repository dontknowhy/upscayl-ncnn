#!/bin/env bash
export CC=/usr/bin/clang-19
export CXX=/usr/bin/clang++-19
export CFLAGS="-Ofast -pipe -march=native -Wno-unused-command-line-argument -mllvm -polly -mllvm -polly-vectorizer=stripmine -flto=thin -mllvm -polly-parallel -mllvm -polly-omp-backend=LLVM -fuse-ld=/usr/bin/ld.lld-19 -mllvm -polly-run-inliner -mllvm -polly-run-dce -fno-semantic-interposition -fvisibility=hidden -mllvm -polly-invariant-load-hoisting -fopenmp=libomp"
export CXXFLAGS="-Ofast -pipe -march=native -Wno-unused-command-line-argument -mllvm -polly -mllvm -polly-vectorizer=stripmine -flto=thin -mllvm -polly-parallel -mllvm -polly-omp-backend=LLVM -fuse-ld=/usr/bin/ld.lld-19 -mllvm -polly-run-inliner -mllvm -polly-run-dce -fno-semantic-interposition -fvisibility=hidden -mllvm -polly-invariant-load-hoisting -fopenmp=libomp"
rm -rf build
mkdir build
cd build
cmake ..
make -j$(nproc)

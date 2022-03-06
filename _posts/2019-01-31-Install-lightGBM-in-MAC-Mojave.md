---
title: "Installing LightGBM on MacOS Mojave"
comments: true
toc: true
categories:
  - installation
tags:
  - ML
---

__Content__

[1. Required Dependencies](#required-dependencies)

[2. Install dependencies](#install-dependencies:)

[3. Install LightGBM](#install-lightGBM)

[4. Configure python API](#configure-python-api)

[5. Testing](#testing)

[6. Issues](#issues)

Installing Light Gradient Boosting Machine(lightGBM) on MacOC Mojave

### Required Dependencies
    - 1. CMake
    - 2. GCC or Apple Clang
    - 3. OpenMP


### Install dependencies:
If you have "brew" then good otherwise install from here()

    brew install cmake
    brew install libomp

### Install LightGBM

Lets first check the version of the dependencies. The following are my version of cmake and GCC

    cmake version 3.13.3
    gcc version  8.2.0


Now Download the LightGBM from the git repo

    git clone --recursive https://github.com/Microsoft/LightGBM
    cd LightGBM
    mkdir build
    cd build

Next step is to build

    cmake -DCMAKE_CXX_COMPILER=g++-8 -DCMAKE_C_COMPILER=gcc-8 ..
        -- The C compiler identification is GNU 8.2.0
        -- The CXX compiler identification is GNU 8.2.0
        -- Checking whether C compiler has -isysroot
        -- Checking whether C compiler has -isysroot - yes
        -- Checking whether C compiler supports OSX deployment target flag
        -- Checking whether C compiler supports OSX deployment target flag - yes
        -- Check for working C compiler: /usr/local/bin/gcc-8
        -- Check for working C compiler: /usr/local/bin/gcc-8 -- works
        -- Detecting C compiler ABI info
        -- Detecting C compiler ABI info - done
        -- Detecting C compile features
        -- Detecting C compile features - done
        -- Checking whether CXX compiler has -isysroot
        -- Checking whether CXX compiler has -isysroot - yes
        -- Checking whether CXX compiler supports OSX deployment target flag
        -- Checking whether CXX compiler supports OSX deployment target flag - yes
        -- Check for working CXX compiler: /usr/local/bin/g++-8
        -- Check for working CXX compiler: /usr/local/bin/g++-8 -- works
        -- Detecting CXX compiler ABI info
        -- Detecting CXX compiler ABI info - done
        -- Detecting CXX compile features
        -- Detecting CXX compile features - done
        -- Found OpenMP_C: -fopenmp (found version "4.5")
        -- Found OpenMP_CXX: -fopenmp (found version "4.5")
        -- Found OpenMP: TRUE (found version "4.5")
        -- Configuring done
        -- Generating done
        -- Build files have been written to: /Users/sarbashis/miniconda3/envs/ScitificProject/LightGBM/build

After successful building, compile the programs with "make" command

    make -j
        Scanning dependencies of target lightgbm
        Scanning dependencies of target _lightgbm
        [  3%] Building CXX object CMakeFiles/_lightgbm.dir/src/c_api.cpp.o
        [  3%] Building CXX object CMakeFiles/_lightgbm.dir/src/lightgbm_R.cpp.o
        [  4%] Building CXX object CMakeFiles/lightgbm.dir/src/main.cpp.o
        [  7%] Building CXX object CMakeFiles/_lightgbm.dir/src/application/application.cpp.o
        [  9%] Building CXX object CMakeFiles/_lightgbm.dir/src/boosting/gbdt.cpp.o
        [ 11%] Building CXX object CMakeFiles/lightgbm.dir/src/boosting/gbdt.cpp.o
        [ 11%] Building CXX object CMakeFiles/lightgbm.dir/src/application/application.cpp.o
        [ 12%] Building CXX object CMakeFiles/_lightgbm.dir/src/boosting/boosting.cpp.o
        [ 14%] Building CXX object CMakeFiles/lightgbm.dir/src/metric/dcg_calculator.cpp.o
        [ 15%] Building CXX object CMakeFiles/lightgbm.dir/src/boosting/boosting.cpp.o
        [ 20%] Building CXX object CMakeFiles/lightgbm.dir/src/boosting/gbdt_model_text.cpp.o
        [ 22%] Building CXX object CMakeFiles/_lightgbm.dir/src/boosting/gbdt_model_text.cpp.o
        [ 23%] Building CXX object CMakeFiles/_lightgbm.dir/src/boosting/gbdt_prediction.cpp.o
        [ 25%] Building CXX object CMakeFiles/lightgbm.dir/src/boosting/gbdt_prediction.cpp.o
        [ 30%] Building CXX object CMakeFiles/lightgbm.dir/src/io/config.cpp.o
        [ 31%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/parser.cpp.o
        [ 34%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/config_auto.cpp.o
        [ 34%] Building CXX object CMakeFiles/_lightgbm.dir/src/boosting/prediction_early_stop.cpp.o
        [ 34%] Building CXX object CMakeFiles/lightgbm.dir/src/io/config_auto.cpp.o
        [ 34%] Building CXX object CMakeFiles/lightgbm.dir/src/io/json11.cpp.o
        [ 36%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/metadata.cpp.o
        [ 38%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/bin.cpp.o
        [ 39%] Building CXX object CMakeFiles/lightgbm.dir/src/boosting/prediction_early_stop.cpp.o
        [ 41%] Building CXX object CMakeFiles/lig[ 73%] Building CXX object CMakeFiles/_lightgbm.dir/src/network/network.cpp.o
        [ 76%] Building CXX object CMakeFiles/_lightgbm.dir/src/treelearner/data_parallel_tree_learner.cpp.o
        [ 76%] Building CXX object CMakeFiles/_lightgbm.dir/src/objective/objective_function.cpp.o
        [ 77%] Building CXX object CMakeFiles/_lightgbm.dir/src/treelearner/gpu_tree_learner.cpp.o
        [ 53%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/config.cpp.o
        [ 57%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/file_io.cpp.o
        [ 58%] Building CXX object CMakeFiles/_lightgbm.dir/src/metric/metric.cpp.o
        [ 60%] Building CXX object CMakeFiles/lightgbm.dir/src/network/linker_topo.cpp.o
        [ 61%] Building CXX object CMakeFiles/lightgbm.dir/src/metric/metric.cpp.o
        [ 44%] Building CXX object CMakeFiles/lightgbm.dir/src/io/bin.cpp.o
        [ 52%] Building CXX object CMakeFiles/lightgbm.dir/src/io/dataset.cpp.o
        [ 57%] Building CXX object CMak[ 79%] Building CXX object CMakeFiles/_lightgbm.dir/src/treelearner/voting_parallel_tree_learner.cpp.o
        eFiles/lightgbm.dir/src/io/file_io.cpp.o
        [ 63%] Building CXX object CMakeFiles/lightgbm.dir/src/io/dataset_loader.cpp.o
        [ 65%] Building CXX object CMakeFiles/lightgbm.dir/src/network/linkers_mpi.cpp.o
        [ 66%] Building CXX object CMakeFiles/_lightgbm.dir/src/network/linker_topo.cpp.o
        [ 68%] Building CXX object CMakeFiles/lightgbm.dir/src/network/linkers_socket.cpp.o
        [ 69%] Building CXX object CMakeFiles/_lightgbm.dir/src/metric/dcg_calculator.cpp.o
        [ 71%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/tree.cpp.o
        htgbm.dir/src/io/metadata.cpp.o
        [ 47%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/dataset_loader.cpp.o
        [ 49%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/dataset.cpp.o
        [ 50%] Building CXX object CMakeFiles/_lightgbm.dir/src/io/json11.cpp.o
        [ 77%] Building CXX object CMakeFiles/lightgbm.dir/src/io/tree.cpp.o
        [ 77%] Building CXX object CMakeFiles/lightgbm.dir/src/io/parser.cpp.o
        [ 42%] Building CXX object CMakeFiles/_lightgbm.dir/src/network/linkers_mpi.cpp.o
        [ 46%] Building CXX object CMakeFiles/_lightgbm.dir/src/network/linkers_socket.cpp.o
        [ 82%] Building CXX object CMakeFiles/_lightgbm.dir/src/treelearner/feature_parallel_tree_learner.cpp.o
        [ 82%] Building CXX object CMakeFiles/lightgbm.dir/src/network/network.cpp.o
        [ 84%] Building CXX object CMakeFiles/_lightgbm.dir/src/treelearner/tree_learner.cpp.o
        [ 85%] Building CXX object CMakeFiles/_lightgbm.dir/src/treelearner/serial_tree_learner.cpp.o
        [ 87%] Building CXX object CMakeFiles/lightgbm.dir/src/treelearner/data_parallel_tree_learner.cpp.o
        [ 90%] Building CXX object CMakeFiles/lightgbm.dir/src/treelearner/feature_parallel_tree_learner.cpp.o
        [ 90%] Building CXX object CMakeFiles/lightgbm.dir/src/treelearner/tree_learner.cpp.o
        [ 92%] Building CXX object CMakeFiles/lightgbm.dir/src/treelearner/voting_parallel_tree_learner.cpp.o
        [ 93%] Building CXX object CMakeFiles/lightgbm.dir/src/treelearner/serial_tree_learner.cpp.o
        [ 95%] Building CXX object CMakeFiles/lightgbm.dir/src/treelearner/gpu_tree_learner.cpp.o
        [ 96%] Building CXX object CMakeFiles/lightgbm.dir/src/objective/objective_function.cpp.o
        [100%] Linking CXX executable ../lightgbm
        [100%] Linking CXX shared library ../lib_lightgbm.so
        [100%] Built target lightgbm
        [100%] Built target _lightgbm


If you reached upto this then, Congratulation!!! LightGBM is now installed in your mac.

### Configure python API

Next run the following command

    >>> import lightgbm as lgb
        Traceback (most recent call last):
        File "<stdin>", line 1, in <module>
        ModuleNotFoundError: No module named 'lightgbm'

If you see the error "No module named 'lightgbm''", That means that python environment not configure for the ligthgbm.
Then you need to do the following command from LightGBM root folder.

    cd python-package/
    python setup.py install
        running install
        INFO:LightGBM:Starting to compile the library.
        INFO:LightGBM:Starting to compile with CMake.
        running build
        running build_py
        creating build
        creating build/lib
        creating build/lib/lightgbm
        copying lightgbm/callback.py -> build/lib/lightgbm
        copying lightgbm/compat.py -> build/lib/lightgbm
        copying lightgbm/plotting.py -> build/lib/lightgbm
        copying lightgbm/__init__.py -> build/lib/lightgbm
        copying lightgbm/engine.py -> build/lib/lightgbm
        copying lightgbm/basic.py -> build/lib/lightgbm
        copying lightgbm/libpath.py -> build/lib/lightgbm
        copying lightgbm/sklearn.py -> build/lib/lightgbm
        running egg_info
        creating lightgbm.egg-info
        writing lightgbm.egg-info/PKG-INFO
        writing dependency_links to lightgbm.egg-info/dependency_links.txt
        writing requirements to lightgbm.egg-info/requires.txt
        writing top-level names to lightgbm.egg-info/top_level.txt
        writing manifest file 'lightgbm.egg-info/SOURCES.txt'
        reading manifest file 'lightgbm.egg-info/SOURCES.txt'
        reading manifest template 'MANIFEST.in'
        no previously-included directories found matching 'build'
        warning: no files found matching '*.txt'
        warning: no files found matching '*.so' under directory 'lightgbm'
        warning: no files found matching '*.dll' under directory 'compile/Release'
        warning: no files found matching '*' under directory 'compile/compute'
        warning: no files found matching '*.dll' under directory 'compile/windows/x64/DLL'
        warning: no previously-included files matching '*.py[co]' found anywhere in distribution
        writing manifest file 'lightgbm.egg-info/SOURCES.txt'
        copying lightgbm/VERSION.txt -> build/lib/lightgbm
        running install_lib
        creating /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/callback.py -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/compat.py -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/plotting.py -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/__init__.py -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/engine.py -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/basic.py -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/libpath.py -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/sklearn.py -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        copying build/lib/lightgbm/VERSION.txt -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        INFO:LightGBM:Installing lib_lightgbm from: ['../lib_lightgbm.so', 'compile/lib_lightgbm.so']
        copying ../lib_lightgbm.so -> /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm
        byte-compiling /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm/callback.py to callback.cpython-36.pyc
        byte-compiling /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm/compat.py to compat.cpython-36.pyc
        byte-compiling /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm/plotting.py to plotting.cpython-36.pyc
        byte-compiling /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm/__init__.py to __init__.cpython-36.pyc
        byte-compiling /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm/engine.py to engine.cpython-36.pyc
        byte-compiling /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm/basic.py to basic.cpython-36.pyc
        byte-compiling /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm/libpath.py to libpath.cpython-36.pyc
        byte-compiling /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm/sklearn.py to sklearn.cpython-36.pyc
        running install_egg_info
        Copying lightgbm.egg-info to /Users/sarbashis/miniconda3/envs/ScitificProject/lib/python3.6/site-packages/lightgbm-2.2.3-py3.6.egg-info
        running install_scripts


### Testing
Lets test it now. You can see python detect lightGBM with a warning message.

    >>> import lightgbm
        /Users/sarbashis/miniconda3/envs/ScitificProject/LightGBM/python-package/lightgbm/__init__.py:46: UserWarning: Starting from version 2.2.1, the library file in distribution wheels for macOS is built by the Apple Clang (Xcode_8.3.3) compiler.
        This means that in case of installing LightGBM from PyPI via the ``pip install lightgbm`` command, you don't need to install the gcc compiler anymore.
        Instead of that, you need to install the OpenMP library, which is required for running LightGBM on the system with the Apple Clang compiler.
        You can install the OpenMP library by the following command: ``brew install libomp``.
        "You can install the OpenMP library by the following command: ``brew install libomp``.", UserWarning)


Now its ready to used. Happy computing.



### Issues
It's rarely happened that you tried to install a package and it installed smoothly.
Below are the issues I face to install and the solution I tried. I believe this can help

####    __1. Installing with GCC 0.7.0__
I tried to install initially with GCC 0.7.0 but got lots of error during "make -j" command

        make[2]: *** [CMakeFiles/lightgbm.dir/src/io/metadata.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/io/tree.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/io/parser.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/application/application.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/treelearner/data_parallel_tree_learner.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/treelearner/tree_learner.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/boosting/gbdt_prediction.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/io/dataset_loader.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/boosting/boosting.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/boosting/gbdt_prediction.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/boosting/boosting.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/io/tree.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/io/dataset.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/application/application.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/objective/objective_function.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/boosting/gbdt_model_text.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/io/dataset.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/boosting/gbdt.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/treelearner/data_parallel_tree_learner.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/treelearner/tree_learner.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/treelearner/feature_parallel_tree_learner.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/c_api.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/io/dataset_loader.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/treelearner/voting_parallel_tree_learner.cpp.o] Error 1
        make[2]: *** [CMakeFiles/lightgbm.dir/src/boosting/gbdt.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/treelearner/voting_parallel_tree_learner.cpp.o] Error 1
        make[2]: *** [CMakeFiles/_lightgbm.dir/src/treelearner/serial_tree_learner.cpp.o] Error 1
        make[1]: *** [CMakeFiles/_lightgbm.dir/all] Error 2
        make[1]: *** Waiting for unfinished jobs....
        make[2]: *** [CMakeFiles/lightgbm.dir/src/treelearner/serial_tree_learner.cpp.o] Error 1
        make[1]: *** [CMakeFiles/lightgbm.dir/all] Error 2
        make: *** [all] Error 2

__Solution:__ Update gcc. I updated GCC using brew which require to have X-code updated. So using Apple Store, I updated X-code and them the folllowing command,

        brew upgrade gcc

X-code and GCC are both large packages, so it takes 2-3 hours to install depending on you internet and computer speed.


There are two issue I faced. Hope This is helpful.

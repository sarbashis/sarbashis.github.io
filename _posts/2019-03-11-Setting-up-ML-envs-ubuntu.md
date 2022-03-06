---
title: "Setting up Machine Learning Environment in Ubuntu/Linux"
comments: true
categories:
  - installation
tags:
  - ML
---
This post is for setting up a Machine Learning environment for your Machine Projects in Linux/Ubuntu. Also important to keep in mind that you should keep tract of your environment which help in reproducibility of the project. Here I am showing how easy to set up Machine Learning Environment with anaconda. 
<!-- TOC -->

- [Conda Installer](#conda-installer)
  - [Installing Conda](#installing-conda)
  - [Create a new virtual environment using Conda](#create-a-new-virtual-environment-using-conda)
  - [Migration of a conda Environment](#migration-of-a-conda-environment)

<!-- /TOC -->

# Conda Installer
Anaconda is an open-source platform for Python/R and machine Learning and available for linux, Windows and Mac OS X.  It is the industry standard for developing, testing, and training on a single machine, enabling individual data scientists.

## Installing Conda
To install the conda installer please follow the following command.

1. Donload Anaconda from the link
  https://www.anaconda.com/distribution/

2. Make it executables by using the following command

      > chmod a+x ./Anaconda3-2018.12-Linux-x86_64.sh

3. Run the command to install conda

      > ./Anaconda3-2018.12-Linux-x86_64.sh


            In order to continue the installation process, please review the license
            agreement.

            Please, press ENTER to continue

            Do you accept the license terms? [yes|no]
            [no] >>> yes

            Anaconda3 will now be installed into this location:

4. Next activate conda path

    > source .bashrc


5. Next step is to update conda. Navigate to the anaconda directory and run the following command

   > conda update conda


## Create a new virtual environment using Conda
Virtual environment is highly recommeded for machine learning projects. Each virtual environment has its own environment and the installed packages. If any package damage or corrupt in one environment will not effect other environment.
So, Lets create a virtual environment.

 1. Follow the conda command.
   > conda create --name "Enviroment_Name" python=3.7

Change the Enviroment_Name accordingly

 2.  Activate the environment using
  > conda activate Enviroment_Name
Once the environment is activated, environment name is added as prefix to the command prompt.

 3. Removing an environment
 > cond remove --name Enviroment_Name --all

 4. Installing other package for example
 > conda install cmake
 > pip install scikit-learn

 5. To get a list of install packages
 > conda list

## Migration of a conda Environment
Migrating a conda environment is pretty easy. Lets see how

 1. Fist we need to export the list of installed packages by using the following command.
 > conda env export > environment.yml

 2. Next is to create a new environment from the file
 > conda env create -f environment.yml

 3. That's it. Done.

Enjoy working

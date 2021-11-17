
# MUSIC

MUSIC is a 3+1D relativistic second-order viscous hydrodynamics for heavy ion collisions written in C++.


## Citation

The hydrodynamic equations are solved with the Kurganov-Tadmor method as described in https://arxiv.org/abs/1004.1408 and https://arxiv.org/abs/1109.6289

It includes shear and bulk viscosities at second-order as described in http://arxiv.org/abs/arXiv:1509.06738

Freeze-out surface at constant temperature or energy density is generated by Cornelius. Please cite https://arxiv.org/abs/1206.3371 when using this feature.

A user manual for MUSIC is available here: https://webhome.phy.duke.edu/~jp401/old_music_manual/


## Compilation

The MUSIC code can be compiled using standard `cmake`. 

Alternatively, you can compile the MUSIC code using a makefile. In this way,
please make sure the information about the openMP and the directory of the
GSL library is correct in the `src/GNUmakefile`. Then one can compile the code
by typing `make`.



## Run MUSIC with an input file

An input file is required that contains the line `EndOfData`, preceded by a
list of parameter names and values, one per line, with parameter names and
values separated by a space or tab. If omitted, each parameter will be assigned
a default value. Example input files can be found under the folder `example_inputfiles/`.

The list of possible parameters and default values, along
with a brief description, can be found in `utilities/music_parameters_dict.py`.

To run hydro simulation, one can start by running the python script
`generate_music_inputfile.py` (can be found in `utilites` folder) to generate input files and job running script.
The job script can run under bash and qsub systems.  For some help information
about `generate_music_inputfile.py`,  one can simply type:

    generate_music_inputfile.py -h



## Run MUSIC on multiple CPU cores

MUSIC uses openMP for parallelization.  For example, to run on two processors 
and use the sample input file, type:

	export OMP_NUM_THREADS=2
    ./mpihydro input_example
=======
Once the prerequisites are installed, you can build the package using:

    make -j 10 #Adjust 10 to the number of cores available.

The result will be an executable named **`mpihydro`**.

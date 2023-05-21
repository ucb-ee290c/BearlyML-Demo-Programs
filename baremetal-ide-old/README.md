# Chipyard Baremetal Software IDE

## Project Structure

### `workspace/`

This is the root of the project. Feel free to move this folder to other locations. 

### `workspace/bsp/`

This folder contains all the board support files, including the Hardware Abstraction Library. Normally user should not modify the content within this folder.

### `workspace/core/`

This folder contains all the user code.

### `workspace/debug/`

This folder contains scripts for debugging, including the OpenOCD config script for JTAG debugging, and the SVD file.

### `workspace/lib/`

This folder stores all the 3rd party libraries.

### `workspace/Makefile`

Makefile for building the software.

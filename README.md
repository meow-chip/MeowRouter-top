# MeowRouter on ThinRouter

> Meow?

This repository contains the top modules and integrated tests for MeowRouter.

MeowRouter is a hardware router written in Chisel, specifically designed for ThinRouter. It is written in Chisel3, and hosted in another repo.

## Setup
Source code for MeowRouter is presented as a submodule in this repo. To setup your workspace, do:

```bash
git clone <URI to this repo> [local path]
cd [local path]
git submodule update --init --recursive
./build_chisel.sh
```

This will generate a verilog RTL file at `./thinpad_top.srcs/sources_1/new/Router.v`. Then you can use Vivado to simulate or elaborate the entire design.

## Edit MeowRouter

You may need to get your commit pushed into MeowRouter's repo. To do so:

```bash
# Inside MeowRouter
# Commit your changes and push to *MeowRouter*
git commit -m "Meaningful message"
git push

# Go back to the top repo, and update the ref to MeowRouter
cd ..
git commit -m "Update MeowRouter"
git push
```

## Update MeowRouter
If other guys edited MeowRouter, to follow other's edit:
```bash
git submodule update --recursive
./build_chisel.sh
```

Now your module is kept up-to-date

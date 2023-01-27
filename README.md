# Hello World in Phat Contract

<img align="right" width="320" src="res/Phat%20Contract_Standard%20Logo_wht_02.svg">

This contract shows the off-chain computation with native HTTP request support in Phat Contract from [Phala Network](https://phala.network/).

It receives the Ethereum accounts from users and reports the account balance by querying the Etherscan with its native HTTP request.

## Setup
the .devcontainer folder contains a setup configuration which will allow the project to run into a "Dev Container" in VSCode

* you need the "Dev Containers" extension in VSCode

* you need Docker running on your OS, see https://docs.docker.com/get-docker/


clone the project with github desktop, or with VSCode, or in command line using:
```bash 
git clone https://github.com/PhalaTeamFR/phat-hello.git
```

in VSCode
* open the project in the explorer
* click the green button in the lower left corner ("Open a Remote Window")
* choose the option "Reopen in container"

this step will last ~1h ; the process will pull several Docker containers, and will setup the requirements for phat-contract development

see the Dockerfile into the .devcontainer folder to get details about the setup process

once the Dev container is launched, in the bottom part of the window, you can click (+) to launch a new terminal and should be logged as root, inside the project folder 

your setup should be ready with dependencies and you can then continue with the build step.

## Build

```bash
cargo +nightly contract build
```

## Test

To test your contract locally and see its output, run with

```bash
cargo +nightly test -- --nocapture
```

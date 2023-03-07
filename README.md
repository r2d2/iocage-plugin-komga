# iocage-plugin-komga

## Description
This is an unofficial Truenas plugin, to enable Komga on my setup.
This is usable directly by entering commands in the Truenas builtin shell

## Installation 

First, get the json plugin description

``` wget https://raw.githubusercontent.com/r2d2/truenas-plugin-komga/main/komga.js ```

Then, create the iocage

``` iocage fetch -P komga.js -n komga ```

# Android-Asset-Disassembler

A bash script to disassemble android zip, renaming the inside files according to size and moving them to the res file of app.

### Todo:
- [ ] unzip the downloaded assets
- [ ] rename the folder assets
- [x] move the contents to res
- [x] delete the zip and unzip
- [ ] help for commands

### Contribution:
Pick up anything you want and raise a PR.

### Steps of execution:

* Clone the repository
``` git clone git@github.com:thenishchalraj/Android-Asset-Disassembler.git```

* Move into the directory
``` cd Android-Asset-Disassembler```

* Change execution permission
``` chmod +x asset_disassembler.sh```

* Run with following command (as of 18/03/23)
``` ./asset_disassembler.sh <path of downloaded resource> <path of res folder>```

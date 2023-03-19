# Android-Asset-Disassembler

A bash script to disassemble android zip, renaming the inside files according to size and moving them to the res file of app.

### Todo:
- [x] unzip the downloaded assets
- [x] rename the folder assets
- [x] move the contents to res
- [x] delete the zip and unzip
- [x] help for commands

### Contribution:
Pick up anything you want and raise a PR.

### Steps of execution:

* Clone the repository
``` git clone git@github.com:thenishchalraj/Android-Asset-Disassembler.git```

* Move into the directory
``` cd Android-Asset-Disassembler```

* Change execution permission
``` chmod +x asset_disassembler.sh```

* Run the following command for help
``` ./asset_disassembler.sh -h ```

* Run the following command for disassembly
``` ./asset_disassembler.sh /<path of downloaded resource>/ temporary_folder_to_be_created name_of_asset_to_rename /<path of res folder>/```

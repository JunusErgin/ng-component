# ng-component

Simple Bash script to create Angular4 Components without using Angular-CLI.
If you work with an Angular project which is not based on Angular-CLI, you cannot create new Angular components using Angular-CLI without editing the project settings. 
 

## How to start
- Download the ng-component.sh
- Execute ng-component in the folder where you want to create your component
- Follow the instructions on the command line

## OSX / UNIX based systems
- Copy your script to the directory `usr/local/bin`.
- Make the `.sh` file executable via your terminal with the command `chmod +x {path to your script}`.
- Start the script from any terminal by `sh ng-component.sh` and follow the prompts.

## Windows
- You need a bash which is able to execute `.sh` files. I would recommend to install the Windows Subsystem for Linux (WSL) or just use Git Bash.
- You can open the script from any directory if you copy is it `C:/Windows/System32/`
- In order to run the script from the Webstorm Terminal, you need to write a small *wrapper file* in your System32

## Additional Information
- You don't have to add the suffix 'Component' to the name of a component, it will be added automatically.
- The first letter your component gets converted to upper case due to the Angular style guidelines.


## License
MIT

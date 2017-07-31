# ng-component

Simple Bash script to create Angular4 Components without using Angular-CLI.
If you work with an Angular project which is not based on Angular-CLI, you cannot create new Angular components using Angular-CLI without editing the project settings. 
 

## How to start
- Download the ng-component.sh
- Execute ng-component in the folder where you want to create your component
- Follow the instructions on the command line

## Windows
- You need a bash which is able to execute `.sh` files. I would recommend to install the Windows Subsystem for Linux (WSL) or just use Git Bash.
- You can open the script from any directory if you copy is it `C:/Windows/System32/`
- In order to run the script from the Webstorm Terminal, you need to write a small *wrapper file* in your System32

## Additional Information
- You don't have to add the postfix Compoent, it will be automatically added as a postfix.
- The first letter your component gets converted to upper case due to the Angular style guidelines.


## License
MIT

#!/bin/bash
#
# This script automatically creates a component for in Angular 4 app in the current directory.
# Optionally, an NgModule and extra HTML and SCSS files for NativeScript can be created.
#

####   Configuration   ####

indexFile = "null" # The index file where your Component gets linked (relative link)

#### Configuration end ####

echo "(Folder) Type in the name of the folder you want to create, followed by [ENTER]:"
read folder


mkdir  $folder
cd $folder

echo "(Component) Type in the name of the component you want to create, followed by [ENTER]:"
read component
component="$(tr '[:lower:]' '[:upper:]' <<< ${component:0:1})${component:1}"
echo creating component $component in $folder


echo "(Selector) Type in the name of the selector for this component, followed by [ENTER]:"
read selector

# Creating component.ts
echo "import { Component } from '@angular/core';" > $folder.component.ts
echo "import { Logger } from 'angular2-logger/core';" >> $folder.component.ts
echo "" >> $folder.component.ts
echo "@Component({" >> $folder.component.ts
echo "    selector: '"$selector"'," >> $folder.component.ts
echo "    templateUrl: '"$folder".component.html'," >> $folder.component.ts
echo "    styleUrls: ['"$folder".component.css']," >> $folder.component.ts
echo "    moduleId: module.id" >> $folder.component.ts
echo "})" >> $folder.component.ts
echo "export class "$component"Component {" >> $folder.component.ts
echo "" >> $folder.component.ts
echo "    constructor(private _logger:Logger) {" >> $folder.component.ts
echo "    }" >> $folder.component.ts
echo "" >> $folder.component.ts
echo "}" >> $folder.component.ts

# Creating html and scss file
echo "<h1>"$component"Component</h1>" > $folder.component.html
echo "" > $folder.component.scss

# Create a routes file
while true; do
    read -p "(Routes) Do you want to create a routes file? [Y/N]" yn
    case $yn in
        [Yy]* ) echo "(Path) Type in the path for this component, followed by [ENTER]:";
		read route
		echo "import { "$component"Component } from './"$folder".component';" > $folder.routes.ts; 
		echo "" >> $folder.routes.ts; 
		echo "export const "$component"Routes: Array<any> = [" >> $folder.routes.ts; 
		echo "    {" >> $folder.routes.ts; 
		echo "        path: '"$route"'" >> $folder.routes.ts; 
		echo "        component: "$component"Component" >> $folder.routes.ts; 
		echo "    }" >> $folder.routes.ts; 
		echo "];" >> $folder.routes.ts; 
		break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done


# Create a module file
while true; do
    read -p "(NgModule) Do you want to create an NgModule file? [Y/N]" yn
    case $yn in
        [Yy]* ) echo "import { NgModule } from '@angular/core';" > $folder.module.ts; 
		echo "import { CommonModule } from '@angular/common';" >> $folder.module.ts; 
		echo "import { "$component"Component } from './"$folder".component';" >> $folder.module.ts; 
		echo "" >> $folder.module.ts; 
		echo "@NgModule({" >> $folder.module.ts; 
		echo "    imports: [CommonModule]," >> $folder.module.ts; 
		echo "    declarations: ["$component"Component]," >> $folder.module.ts; 
		echo "    exports: ["$component"Component]" >> $folder.module.ts; 
		echo "})" >> $folder.module.ts; 
		echo "export class "$component"Module {" >> $folder.module.ts; 
		echo "}" >> $folder.module.ts; 
		break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done


# Create tns files (NativeScript)
while true; do
    read -p "(NativeScript) Do you want to create an a second HTML and SCSS for NativeScript? [Y/N]" yn
    case $yn in
        [Yy]* ) echo "" > $folder.component.tns.html
		echo "" > $folder.component.tns.scss
		break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

cd ..
echo "Your component was successfully created"
read 

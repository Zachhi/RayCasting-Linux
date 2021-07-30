# Ray Casting

Simple ray casting simulation that shows how rays of light would behave depending on its source location and the walls around it

Note: If you have access to Visual Studio, I reccomend that version, which can be found here: https://github.com/Zachhi/RayCasting-VisualStudio

## Demo

## Controls

* Click twice to draw a wall from the first click to the second click
* "C" to clear all walls
* Move mouse around to change light source position
* "Space" to change the source type. 
      3 Types:
      Draw all the light rays 
      Draw only the light rays that hit walls
      Draw no light rays
* "Up arrow" to increase amount of light rays
* "Down arrow" to decrease amount of light rays
* "Escape" to exit the program

### Dependencies

* SFML (Simple and Fast Multi-Media Library) 2.5.1 or later. However, I have set everything up already for your convenience. You will not be required to download/link any libraries. The downside is that the download is ~30 MB more.
* GCC 7.3.0 MinGW 
* GNU Make 

**If you want to use Visual Studio (Recommended), which would not require the use of a makefile,**
 I have provided a version for Visual Studio here: https://github.com/Zachhi/RayCasting-VisualStudio

### Installing And Executing

* Download the source code from here, or copy the repository into your enviroment
* Open your terminal
* run the command `make` to build project
* Now run the executable by running the command `run` or `run.exe` to start the program
* If it does not work right away for you, there is two things you have to check:
  * Go to your default compiler path or `C_Cpp.default.compilerpath` and make the path is set to `C:/MinGW/bin/g++.exe` or wherever your MinGW is located
  * Go to your default include path or `C_Cpp.default.includepath` and make sure the path is set to `["${workspaceFolder}**/"]`
  * Run `make` and `run` again and the program should execute

## Authors

Zachary Chi
zachchi@tamu.edu

## License

This project is licensed under the MIT License - see the LICENSE.md file for details

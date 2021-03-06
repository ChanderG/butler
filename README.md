#butler

###What?
A complete setup personal assistant. For now, customized for my needs. Will look to generalize the setup. Setup for Ubuntu/Debian.

###How?
`butler` is the main entry point. It is a single point of entry wrapper built to execute tasks from the `tasks/` folder. For now, there is a one-to-one correspondence with names (though this will change in the future). 

Tasks are simple scripts written in any language and placed in the `tasks/` folder in a particular way. 

###Installation

#### Get the repository

##### With git
`git clone` this repository.

##### or

##### Full bootstrap
Just get the `bootstrap.sh` script and run it. Installs git, python and gets this repository.

To get the script directly:

```
wget https://raw.githubusercontent.com/ChanderG/butler/master/bootstrap.sh
```

#### Install
Run the `setup.sh` script. Symlinks and adds the main code to the path variable. Once you do this, you can use butler from anywhere in the system by calling:

```
butler
```

###Usuage
The style of usuage as of now is as follows:

```
butler setup taskname
```

will run the `taskname` script in the folder /tasks/setup.

Running without any arguments:
```
butler
```
would print all available tasks.

###Folder structure

Right now:

`tasks` folder consists all scripts

`workspace` folder is created to store all downloaded files etc.

`config` folder is used to store various config information.

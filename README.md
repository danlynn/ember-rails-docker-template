# Ember, Rails, & MySQL Docker Template

## Dependencies

+ Make sure you have rvm installed for automatic command aliasing.  
+ Docker
+ Fig

## General Use Commands

When cd'ing into the project directory tree in your local workstation's terminal app, rvm will automagically notice that you have switched to the project and setup the following general use commands.

+ npm
+ bower
+ ember

If you don't have rvm installed then you may manually execute `. setup.sh` from the project root directory before using any of the general use commands.

All of these commands run with the working directory set to the project root directory.  All commands execute within a docker container.

## Service Commands

To start the services, simply execute the regular fig up command.

+ `fig up`

This will start the ember-cli server watching for file changes and refreshing the browser.  The webapp can be accessed at the IP identified via `boot2docker ip` on port 4022 using your workstations browser.

## Using with Git

We wanted a simple approach to Git that anyone can pick up quickly, but has the power and flexibility you'd expect from Git. We set it up so the `cordova`, `ember`, and `rails` directories are expected to each be their own Git repositories. Thus those directories are ignored by this project's repo. 

By having the directories that contain your app code ignored by Git, you are free to pull in the latest version of this project at any time without affecting your app.

While you could go with a complex subtree or submodule approach, we felt this was simplier. 

## Starting out

Your project will start out with three empty directories that will house your application code.

+ cordova: this will contain any PhoneGap related files your project may use.
+ ember: this will contain the Ember.js portion of your app. The `ember` command maps to this directory.
+ rails: this will contain the Ruby On Rails portion of your app. The `rails` command maps to this directory.

Use one of the following methods (or mix and match) to get started.


### How to: create a new project from scratch

Starting with these initial files, execute the following commands to create a new Ember.js project and a new Ruby on Rails project.


1. make sure `boot2docker up` has been executed.
2. Rename the project root directory to whatever you want for a project name. 
3. cd into that project directory.
4. Do an `ember init` to create a new ember project in the current project dir.
5. Do a `rails new app_name_here` to create a new rails project.
6. `fig up`

### How to: use with existing projects

Straight up assuming you're using Git here, and already have projects available.

1. make sure `boot2docker up` has been executed.
2. Rename the project root directory to whatever you want for a project name. 
3. cd into that project directory.
4. Do a git clone to the ember directory.
	`git clone git@github.com:USER_NAME/EMBER_APP_NAME.git ember`
5. Do a git clone to the rails directory.
	`git clone git@github.com:USER_NAME/RAILS_APP_NAME.git rails`
6. `fig up`





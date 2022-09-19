# Knowledge requirements
In order you to feel confortable, i advise you to get some basic understanding on the following topics:
 - [Top linux commands](https://bytescout.com/blog/most-used-linux-commands.html)
 - [Virtualisation](https://www.redhat.com/en/topics/virtualization/what-is-virtualization)
 - [Docker](https://www.educative.io/blog/beginners-guide-to-docker)
 - [Singularity](https://docs.sylabs.io/guides/2.6/user-guide/singularity_and_docker.html)
# Setup
### 1. Step - Cloning the repository
Clone the repository with the http protocol to your home directory in one of the fhgr's servers.
`https://github.com/glaand/fhgr-singularity-cds.git`
### 2. Step - Enter the repository
`cd fhgr-singularity-cds`
### 3. Step - Give permissions to shell scripts
`chmod +x build.sh`  
`chmod +x run.sh`
### 4. Step - Build the container
`./build.sh`
## Hosting your Code
You can put the code that you want to execute on the servers under the folder `code/`. This folder is ignored from the github, so no stack changes should occurr (github will ignore changes in this folder).

After setting the code in the folder, you can execute it with the `run.sh` script. E.g, let's say you have a file named as `test.py` under the folder `code/`. Just execute the following command to run it:
```
./run.sh "python test.py"
```
Don't forget the double brackets, since the container command is being sent first to the script, only after that it get's executed on the container.


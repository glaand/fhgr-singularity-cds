# Knowledge requirements
In order that you feel confortable with this environment, i advise you to get some basic understanding on the following topics:
 - [Top linux commands](https://bytescout.com/blog/most-used-linux-commands.html)
 - [Virtualisation](https://www.redhat.com/en/topics/virtualization/what-is-virtualization)
 - [Docker](https://www.educative.io/blog/beginners-guide-to-docker)
 - [Singularity](https://docs.sylabs.io/guides/2.6/user-guide/singularity_and_docker.html)

# Connect to one of the FHGR's Linux Server
To connect to one of the FHGR's Linux Server, you need to have `ssh` installed in your system. On operating systems like **Linux** or **MacOS*, `ssh` is installed by default. On Windows it may be that you need to install it. In order to check if you have `ssh` installed is by trying to run the command on `powershell` or `cmd`. Another option is to use one of the most famous ssh tool for Windows, which is `putty`. It may be that your fhgr account is not able to connect to the servers. If some permission denied returns from the ssh client, please contact the IT Department. Typically, Computational and Data Science Students should have access to the servers.

One more important point is that, you can only connect to the servers if you are connected to FHGR's VPN. Please follow the instructions on how to setup the VPN from FHGR. You find the instructions on the it support site.

The command schema to connect looks like this:
```
ssh <eduroam_username>@server_domain
```

E.g., let's say you are `Hans Peter` which wants to connect to the `helium.fhgr.ch` server. You would run the following command
```
ssh peterhans@helium.fhgr.ch
```

The password of your ssh account is the same one as from eduroam or moodle.

Have fun :)
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



# grnsq

### WARNING: USE AT YOUR OWN RISK

### THIS CODE IS FOR EDUCATIONAL PURPOSES ONLY.

This bash script will generate endless beautiful green squares for your viewing pleasure. It will request a GitHub repository to use as the vessel to do its work. It will generate a log file, make a change to the file and do a commit with a random date using a defined year.

## Tips

* Create a new repository just for this script.

* You must run the following command first:
```bash
chmod +x grnsq.sh
```
* To run the script:
```bash
./grnsq.sh
```

**NOTE:** This application works very quickly so pay attention to the commit number. When you want it to stop, press **Q**. 

**NOTE:** The commits are pushed just before the application quits.

## Usage

The year can be changed on **line 6:** `year="2021`.

Press **Q** to quit.


### To Do

Right now it is hard coded to choose a random day of the month up to the 28th day. This is to avoid any error with trying to commit on a date that doesn't exist. Functionality needs to be put in that changes that range based on the month.


### Install
Download to folder in which you whant to have vENV.<br>
vENV will be init in <b>./venv</b>
```bash
wget https://raw.githubusercontent.com/nchekwa/venv.sh/main/venv.sh
```

### Usage
```bash
# --- Usage ---
root@linux:/tmp# sh venv.sh 
Usage: venv.sh {create|activate|deactivate|remove}
aliases: 
 * create=init
 * activate=active|run
 * deactivate=remove|deletel|del

# --- Create vENV ---
root@linux:/tmp# sh venv.sh create
Virtual environment created at ./venv

# --- Activate vENV ---
root@linux:/tmp# ./venv.sh active
(venv) root@linux:/tmp#

# --- Deactivate vENV ---
(venv) root@linux:/tmp# deactivate
root@linux:/tmp#

# --- Remove vENV ---
root@linux:/tmp# sh venv.sh remove
Virtual environment removed.

```

# Intoduction
Notileak is implemented based on LibPecker and Flowdroid. LibPecker is used to detect third party notification libraries and Flowdroid is used to detect whether these libraries leak personal information. The analysis results are stored in mongodb.

This project mainly constains three useful scripts, including `library-scraper.py`, `main.py` and `FD_Analysis.py`. 

1. `library-scraper.py` is used to download all notification libraries from maven and other repositories.
2. The downloaded libraries are mostly `aar` or `jar` format, which need to be convert to dex format that is required by Libpecker. Use `lib2dex(True,sys_type)` function to convert all these libraries to `dex` format.
3. (!!Edit the `settings.py` before use)`main.py` can then be used to iterate over a folder that contains apk files. Firstly it use libpecker to detect whether these apk files used notification libraries, if yes, it will then use Flowdroid to analyze its information leakage behaviours. The Flowdroid analysis reuslt will be writen to `./flow_result/xxx.xml`.
4. `FD_Analysis.py` can be used to analyze all the flowdroid result files to obtain statistics. 

# Prerequirement

```bash
# Install Mongodb
apt-get install gnupg
curl -fsSL https://pgp.mongodb.com/server-6.0.asc | \
sudo gpg -o /usr/share/keyrings/mongodb-server-6.0.gpg \
--dearmor
touch /etc/apt/sources.list.d/mongodb-org-6.0.list
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-6.0.gpg ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/6.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-6.0.list
sudo apt-get update
sudo apt-get install -y mongodb-org
# Install python requirement
pip install -r requirements.txt
# Scrape latest notification libraries from Maven and other repositories.
python library-scraper.py config/notification-libraries.json
```

[![LibScraper](https://asciinema.org/a/4dAn72v8vbKVl7AGflXVfxpFi.svg)](https://asciinema.org/a/4dAn72v8vbKVl7AGflXVfxpFi)

# Run
Before run the following command, you need to change the hardcoded paths in the `settings.py`
```bash
python main.py
```
[![asciicast](https://asciinema.org/a/lbHcAqko9IfbCzde2Eea3j5NJ.svg)](https://asciinema.org/a/lbHcAqko9IfbCzde2Eea3j5NJ)

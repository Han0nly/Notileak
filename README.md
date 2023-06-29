# Intoduction
Notileak is implemented based on LibPecker and Flowdroid. LibPecker is used to detect third party notification libraries and Flowdroid is used to detect whether these libraries leak personal information. The analysis results are stored in mongodb.


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
# Scrape latest notification libraries from Maven and other repositories.
python library-scraper.py config/notification-libraries.json
```

[![LibScraper](https://asciinema.org/a/4dAn72v8vbKVl7AGflXVfxpFi.svg)](https://asciinema.org/a/4dAn72v8vbKVl7AGflXVfxpFi)

# Run
Before run the following command, you need to change the hardcoded paths in the `settings.py`
```bash
python main.py
```

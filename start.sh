if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/TELEZEN/ercel.git /ercel
  https://github.com/TELEZEN/ercel.git
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /ercel
fi
cd /ercel
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py

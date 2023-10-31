if [ -n "$TERABOX_COOKIES" ]; then
  echo "$TERABOX_COOKIES" | base64 --decode > terabox.txt
fi
if [ -n "$RCLONE_CONFIG" ]; then
  echo "$RCLONE_CONFIG" | base64 --decode > rclone.conf
fi

python3 update.py && python3 -m bot

if [ -n "$TERABOX_COOKIES" ]; then
  echo "$TERABOX_COOKIES" | base64 --decode > terabox.txt
fi
if [ -n "$RCLONE_CONFIG" ]; then
  echo "$RCLONE_CONFIG" | base64 --decode > rclone.conf
fi
if [ -n "$TOKEN_PICKLE_URL" ]; then
  curl -o token.pickle "$TOKEN_PICKLE_URL"
fi
if [ -n "$ACCOUNTS_ZIP_URL" ]; then
  curl -o accounts.zip "$ACCOUNTS_ZIP_URL"
fi

python3 update.py && python3 -m bot

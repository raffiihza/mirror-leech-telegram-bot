if [ -n "$TERABOX_COOKIES" ]; then
  echo "$TERABOX_COOKIES" | base64 --decode > terabox.txt
fi

python3 update.py && python3 -m bot

if [ -n "$DIRECTLINK" ]; then
  rm bot/helper/mirror_utils/download_utils/direct_link_generator.py
  echo "$DIRECTLINK" | base64 --decode > bot/helper/mirror_utils/download_utils/direct_link_generator.py
fi

python3 update.py && python3 -m bot

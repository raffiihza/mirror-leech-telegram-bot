if [ -n "$DIRECTLINK" ]; then
  curl -o bot/helper/mirror_utils/download_utils/direct_link_generator.py "$DIRECTLINK"
fi

python3 update.py && python3 -m bot

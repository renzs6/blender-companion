CONFIG="${1}"
ls
python3 parlai/chat_service/services/websocket/run.py --config-path "$CONFIG" --port 8080

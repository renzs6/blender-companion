FROM python:3.8.10-slim
WORKDIR /app
ADD requirements.txt .
ADD README.md .
RUN pip install -r requirements.txt
ADD parlai/ parlai/
ADD projects/ projects/
ADD tests/ tests/
ADD pytest.ini .
ADD setup.py .
ADD data/ data/
RUN python setup.py develop
ADD bb2-config.yaml .
ADD bb2-config-nosearch.yaml .
ADD run_websocket.sh .
RUN chmod +x run_websocket.sh
RUN python3 parlai/chat_service/services/websocket/setup.py --config-path bb2-config-nosearch.yaml --port 8080
RUN echo "done setting up"
ENTRYPOINT python3 parlai/chat_service/services/websocket/run.py --config-path bb2-config-nosearch.yaml --port 8080

FROM python:3.12.5-slim-bullseye

RUN pip install llama-index-embeddings-ollama llama-index-llms-ollama llama-index-readers-web llama-index-vector-stores-chroma llama-index gradio

RUN pip install pysqlite3-binary

COPY demo/ /demo/
# COPY llm-models/ /llm-models/ 

ENTRYPOINT [ "/bin/bash" ]
# CMD ["-c", "cd /demo/ && python rag-demo.py"]
CMD ["-c", "cd /demo/ && python chroma-rag-demo.py"]
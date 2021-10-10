FROM python:3.9
WORKDIR /project
COPY /project/requirements.txt .
RUN pip install -r requirements.txt
RUN apt update
RUN apt install graphviz --yes
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0", "--allow-root"]


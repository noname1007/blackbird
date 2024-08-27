FROM python:3.10-slim
WORKDIR /blackbird
ARG REQUIREMENTS=requirements.txt
COPY $REQUIREMENTS .

RUN ls
RUN echo "$REQUIREMENTS"
RUN pip3 install -U pip
RUN pip3 install -r "$REQUIREMENTS"

COPY . .

# Run the application.
CMD ["python","blackbird.py"]
FROM python:3.8-slim

# Suppress the pip root user warning
ENV PIP_ROOT_USER_ACTION=ignore

RUN apt update -y && apt install awscli -y
WORKDIR /app

# Install CPU-only PyTorch to save ~5GB of disk space and speed up build on CPU instances (like t2.medium)
RUN pip install --no-cache-dir torch torchvision --index-url https://download.pytorch.org/whl/cpu

COPY . /app
RUN pip install -r requirements.txt

CMD ["python3", "app.py"]
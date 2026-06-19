FROM python:3.11-slim

# Suppress the pip root user warning
ENV PIP_ROOT_USER_ACTION=ignore

RUN apt update -y && apt install -y awscli libgl1-mesa-glx libglib2.0-0
WORKDIR /app

# Copy requirements.txt first to leverage Docker layer caching
COPY requirements.txt /app/

# Install CPU-only PyTorch
RUN pip install --no-cache-dir torch torchvision --index-url https://download.pytorch.org/whl/cpu

# Install remaining dependencies (this step will be cached unless requirements.txt changes)
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . /app

CMD ["python3", "app.py"]
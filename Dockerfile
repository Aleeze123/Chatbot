FROM python:3.10

WORKDIR /app

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy your Chainlit app code
COPY . .

# Expose default Chainlit port
EXPOSE 7860

# Run Chainlit app
CMD ["chainlit", "run", "app.py", "--host", "0.0.0.0"]

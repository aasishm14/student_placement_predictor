FROM python:3.8-slim

WORKDIR /app

# Update this line with the new file name
COPY Campus Placement Prediction Using ML.ipynb .  
COPY app.py .
COPY requirements.txt .

# Add all the model files
COPY *.joblib .

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
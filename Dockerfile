FROM python:3.8-slim

WORKDIR /app

# Update this line with the new file name
COPY Campus_Placement_Prediction_Using_ML.ipynb .  
COPY app.py .
COPY requirements.txt .

# Add all the model files
COPY *.joblib .

RUN pip install -r requirements.txt

CMD ["python", "app.py"]
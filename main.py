from sensor.pipeline.batch_prediction import start_batch_prediction

file_path = r'C:\Users\Dhananjai Singh\Desktop\aps-fault-detection-main\aps_failure_training_set1.csv'

print(__name__)
if __name__ == "__main__":
    try:
        start_batch_prediction(input_file_path=file_path)

    except Exception as e:
        print(e)
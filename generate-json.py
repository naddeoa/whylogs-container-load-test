import pandas as pd
import os
import json

if __name__ == "__main__":

  csv_dir = 'csv'
  for filename in os.listdir(csv_dir ):

    csv_file = os.path.join(csv_dir, filename)

    df = pd.read_csv(csv_file )
    multiple = df.to_dict(orient="split")
    del multiple['index'] # get rid of this to min/max payload size
    payload = {
      'datasetId': 'fake-id',
      'multiple': multiple
    }

    with open(f"./json/{filename.replace('csv', 'json')}", "w") as file:
      file.write(json.dumps(payload))

import pandas as pd
import numpy as np

data = {
    "Ville": ["Casablanca", "Rabat", "Marrakech", "Fès", "Tanger",
              "Agadir", "Oujda", "Meknès", "Essaouira", "Nador"],
    "Disponibilité": [4.9, 4.7, 4.6, 4.8, 4.5, 4.9, 4.7, 4.6, 4.8, 4.5],
    "Courtoisie":    [4.7, 4.5, 4.4, 4.2, 4.3, 4.7, 4.9, 4.4, 4.6, 4.3],
    "Choix":         [2.4, 2.5, 2.6, 2.3, 2.7, 2.6, 2.9, 2.6, 2.5, 2.7],
    "Prix":          [2.6, 2.7, 2.6, 2.5, 2.9, 3.0, 3.1, 3.2, 2.7, 2.9]
}

df = pd.DataFrame(data)
print(df)
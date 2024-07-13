#!/bin/bash

# Pfad zum Ordner mit den .cob-Dateien
ORDNER="."

# Überprüfen, ob der Ordner existiert
if [ ! -d "$ORDNER" ]; then
  echo "Ordner $ORDNER existiert nicht."
  exit 1
fi

# Schleife durch alle .cob-Dateien im Ordner
for DATEI in "$ORDNER"/*.cob; do
  # Überprüfen, ob DATEI existiert (falls keine .cob-Dateien gefunden wurden)
  if [ -e "$DATEI" ]; then
    echo "Kompiliere $DATEI..."
    # cobc zum Kompilieren der Datei verwenden
    cobc -x "$DATEI"
    
    # Überprüfen, ob die Kompilierung erfolgreich war
    if [ $? -eq 0 ]; then
      echo "$DATEI erfolgreich kompiliert."
    else
      echo "Fehler beim Kompilieren von $DATEI."
    fi
  else
    echo "Keine .cob-Dateien im Ordner gefunden."
    exit 1
  fi
done

echo "Kompilierung abgeschlossen."

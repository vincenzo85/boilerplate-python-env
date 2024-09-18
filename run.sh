#!/bin/bash

# Nome dell'ambiente virtuale
VENV_DIR="venv"

# Controllo se l'ambiente virtuale esiste
if [ -d "$VENV_DIR" ]; then
    echo "Ambiente virtuale trovato. Avvio dell'ambiente virtuale..."
    source $VENV_DIR/bin/activate
    echo "Ambiente virtuale attivato."
else
    echo "Ambiente virtuale non trovato. Inizializzazione del progetto..."
    ./init_project.sh
    echo "Inizializzazione completata. Avvio dell'ambiente virtuale..."
    source $VENV_DIR/bin/activate
    echo "Ambiente virtuale attivato."
fi


#!/bin/bash

# Nome dell'ambiente virtuale
VENV_DIR="venv"

# Controlla se l'ambiente virtuale esiste
if [ -d "$VENV_DIR" ]; then
    echo "Attivazione dell'ambiente virtuale..."
    source $VENV_DIR/bin/activate
    echo "Ambiente virtuale attivato."
else
    echo "Errore: Ambiente virtuale non trovato. Esegui lo script di inizializzazione prima."
fi

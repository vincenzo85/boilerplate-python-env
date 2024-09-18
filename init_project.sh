#!/bin/bash

# Nome dell'ambiente virtuale
VENV_DIR="venv"

# Nome del file .gitignore
GITIGNORE_FILE=".gitignore"

# Nome del file .env
ENV_FILE=".env"

# Crea un ambiente virtuale
echo "Creazione dell'ambiente virtuale..."
python3 -m venv $VENV_DIR

# Attiva l'ambiente virtuale
echo "Attivazione dell'ambiente virtuale..."
source $VENV_DIR/bin/activate

# Installa python-dotenv (se necessario)
echo "Installazione del pacchetto python-dotenv..."
pip install python-dotenv

# Crea o modifica il file .gitignore
echo "Aggiornamento del file .gitignore..."
if [ ! -f $GITIGNORE_FILE ]; then
    touch $GITIGNORE_FILE
fi

# Aggiungi .env al .gitignore se non è già presente
if ! grep -Fxq "$ENV_FILE" $GITIGNORE_FILE; then
    echo "$ENV_FILE" >> $GITIGNORE_FILE
    echo ".env aggiunto a .gitignore"
else
    echo ".env è già presente in .gitignore"
fi

# Inizializza un repository Git (se non esiste già)
if [ ! -d ".git" ]; then
    echo "Inizializzazione del repository Git..."
    git init
    echo "Repository Git inizializzato."
else
    echo "Repository Git già inizializzato."
fi

# Aggiungi tutto e crea un primo commit
echo "Aggiunta dei file al repository Git..."
git add .
git commit -m "Inizializzazione del progetto"

echo "Script completato!"


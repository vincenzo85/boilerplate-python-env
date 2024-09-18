Ecco il file `README.md` aggiornato con una sezione di "Come iniziare" più evidente che indica chiaramente l'uso del comando `source ./run.sh`.

### `README.md` (con sezione "Come iniziare" e esclusione di responsabilità)

```markdown
# WP Monitor Project

Questo progetto include una serie di script per configurare e gestire facilmente un ambiente virtuale Python e integrare Git nel tuo workflow. Gli script semplificano la gestione del progetto, automatizzando il setup iniziale, l'attivazione dell'ambiente virtuale e l'integrazione con Git.

## Struttura degli script

- **`init_project.sh`**: Crea un ambiente virtuale, aggiorna `.gitignore` aggiungendo il file `.env`, installa le dipendenze iniziali e inizializza un repository Git se non esiste.
- **`start_env.sh`**: Attiva l'ambiente virtuale esistente.
- **`run.sh`**: Controlla se l'ambiente virtuale esiste. Se esiste, lo avvia, altrimenti esegue lo script di inizializzazione.
- **`README.md`**: Questo file, contenente le istruzioni su come utilizzare gli script.

## Prerequisiti

Prima di utilizzare questi script, assicurati di avere:

- Python 3 installato.
- Git installato.
- Il pacchetto `python-dotenv` sarà installato automaticamente quando si esegue lo script `init_project.sh`.

## Come iniziare

Per iniziare a utilizzare questo progetto, segui questi passaggi:

1. **Clona il progetto**:

   ```bash
   git clone <url-del-repo>
   cd wp-monitor
   ```

2. **Esegui lo script `run.sh`**:

   Lo script `run.sh` è il punto di ingresso principale e gestisce automaticamente l'inizializzazione e l'attivazione dell'ambiente virtuale.

   Se l'ambiente virtuale non esiste, lo script lo creerà e configurerà il progetto. Se l'ambiente virtuale esiste già, lo attiverà.

   **IMPORTANTE**: Usa il comando `source` per eseguire correttamente lo script e mantenere l'ambiente virtuale attivo nella tua sessione corrente.

   ```bash
   source ./run.sh
   ```

   Questo comando eseguirà lo script che, a sua volta, deciderà se inizializzare il progetto o semplicemente attivare l'ambiente virtuale esistente.

3. **Sviluppo e gestione del progetto**:

   Dopo aver eseguito il comando sopra, l'ambiente virtuale sarà attivo e potrai iniziare a sviluppare il tuo progetto.

### 2. Descrizione dei singoli script

#### `init_project.sh`

Questo script esegue le seguenti operazioni:
- Crea un ambiente virtuale Python chiamato `venv`.
- Installa il pacchetto `python-dotenv`.
- Aggiunge il file `.env` al `.gitignore`, se non è già presente.
- Inizializza un repository Git (se non esiste) e crea un commit iniziale.

Per eseguire manualmente questo script (anche se normalmente `run.sh` lo farà automaticamente):

```bash
./init_project.sh
```

#### `start_env.sh`

Attiva l'ambiente virtuale se esiste. Se l'ambiente virtuale non esiste, viene mostrato un messaggio di errore. Normalmente non avrai bisogno di eseguire questo script manualmente, poiché viene eseguito automaticamente da `run.sh` se l'ambiente virtuale è presente.

Per avviare manualmente l'ambiente virtuale:

```bash
./start_env.sh
```

#### `run.sh`

Questo script verifica se la directory dell'ambiente virtuale `venv` esiste:
- Se la directory `venv` è presente, esegue `start_env.sh` per attivare l'ambiente.
- Se la directory `venv` non esiste, esegue `init_project.sh` per configurare il progetto.

Per eseguire questo script, usa il comando `source` per mantenere l'ambiente attivo nella tua sessione corrente:

```bash
source ./run.sh
```

### 3. Considerazioni finali

Assicurati di usare `source ./run.sh` per mantenere l'ambiente virtuale attivo nella tua sessione, altrimenti non sarà persistente al termine dello script. 

In questo progetto, il file `.env` non sarà tracciato da Git grazie al fatto che viene aggiunto automaticamente a `.gitignore`.

Se riscontri problemi o hai domande, puoi creare una segnalazione o contattarmi.

## License

Questo progetto è open-source e distribuito sotto la licenza MIT.

## Disclaimer (Esclusione di responsabilità)

**Questo software è fornito "così com'è", senza alcuna garanzia di alcun tipo, espressa o implicita, incluse, ma non limitate a, le garanzie di commerciabilità, idoneità per uno scopo particolare e non violazione. In nessun caso gli autori o i detentori del copyright saranno responsabili per qualsiasi reclamo, danno o altra responsabilità, sia in un'azione contrattuale, illecito o altro, derivante da, o in connessione con, il software o l'uso o altre operazioni nel software.**

L'uso di questi script è a tuo rischio. Non forniamo garanzie riguardo la correttezza, sicurezza o performance di questi script nel tuo ambiente. Si raccomanda di verificarli accuratamente prima di utilizzarli in produzione.
```

### Modifiche principali:
1. **Sezione "Come iniziare"**: È stata aggiunta una sezione chiara su come iniziare a utilizzare il progetto, con particolare attenzione all'uso di `source ./run.sh`.
2. **Evidenziazione dell'importanza del comando `source`**: Sottolinea chiaramente l'uso di `source` per mantenere l'ambiente virtuale attivo dopo l'esecuzione dello script.

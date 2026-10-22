# ⚡ Claude Code Skill: `/sgrodax`

Un custom command per [Claude Code](https://docs.anthropic.com/en/docs/agents-and-tools/claude-code/overview) ideato secondo i principi di **Context Engineering** e **Prompt Architecture**. 

Automatizza la fase di discovery di qualsiasi progetto software attraverso una doppia intervista a risposte multiple (15+ domande strutturate), estraendo il 90%+ del contesto e proponendo feature di dominio proattive prima di generare un PRD/prompt esecutivo pronto all'uso.

---

## 🎯 Il Problema che Risolve

Quando si sviluppa con LLM o agenti di coding come Claude Code, saltare direttamente all'implementazione porta a:
- Assunzioni errate sullo stack o sui requisiti.
- **Context Bloat**: sessioni lunghe e disordinate piene di domande chiarificatrici che inquinano la memoria a breve termine del modello.
- Mancanza di funzionalità ovvie per lo specifico dominio applicativo.

`/sgrodax` converte un'idea di una riga in una specifica tecnica ad alta precisione, preservando i token di contesto per la reale fase di coding.

---

## ⚙️ Come Funziona il Workflow

1. **Invocazione**: Digiti `/sgrodax <tua idea>` (es. `/sgrodax app per tracciare le calorie`).
2. **Fase 1 - Contesto & Vincoli (5 Domande obbligatorie)**:
   - Target di utenza, vincoli hardware/piattaforma, flusso dati, requisiti privacy/offline e metriche di successo MVP.
   - Tutte a risposta multipla (`A`, `B`, `C`, `D - Altro aperto`).
   - Soglia di confidenza: se il contesto è chiaro al 90%, procede; altrimenti fa un mini follow-up mirato.
3. **Fase 2 - Feature di Dominio & Direzione Tecnica (10 Domande obbligatorie)**:
   - **5 Domande di Feature Discovery**: Claude agisce da Product Specialist e ti propone 5 feature verticali specifiche per quel settore (es. barcode scanner, health sync, photo AI).
   - **5 Domande Architetturali**: Frontend, database, auth, UI styling e gestione stato/offline.
4. **Fase 3 - Output Specifica**:
   - Viene generato un blocco markdown strutturato (PRD compatto).
   - Viene consigliato di fare `/clear` o aprire una sessione pulita per avviare il coding con massima attenzione del modello.

---

## 🚀 Installazione

### Metodo 1: Chiedi a Claude Code (Consigliato)
Clona la repository ed esegui Claude Code nella cartella:

```bash
git clone https://github.com/M4nu0w2/claude-skill-sgrodax.git
cd claude-skill-sgrodax
claude
```

Una volta dentro Claude Code, digita semplicemente:
> *"Installa questa skill globalmente copiando `.claude/commands/sgrodax.md` nella mia cartella `~/.claude/commands/`"*

Claude Code eseguirà il comando per te.

---

### Metodo 2: Tramite script `install.sh`
```bash
git clone https://github.com/M4nu0w2/claude-skill-sgrodax.git
cd claude-skill-sgrodax
chmod +x install.sh
./install.sh
```

---

### Metodo 3: Installazione manuale (One-Liner)
Se non vuoi clonare la repo e preferisci scaricare solo il file del comando:

```bash
mkdir -p ~/.claude/commands && curl -o ~/.claude/commands/sgrodax.md https://raw.githubusercontent.com/M4nu0w2/claude-skill-sgrodax/main/.claude/commands/sgrodax.md
```

---

## 💡 Esempio di Utilizzo

Nel terminale di Claude Code:

```text
> /sgrodax creare un gestore di finanze personali minimale
```

Claude presenterà le prime 5 domande a risposta rapida. Rispondi in una singola riga:

```text
> 1A, 2C, 3D: solo file json locale, 4A, 5B
```

Claude passerà alle 10 domande su feature (sync banche, split spese, grafici) e stack tecnologico. Rispondi:

```text
> 1B, 2D (escludi), 3A, 4C, 5A, 6A (Tauri + Svelte), 7A (SQLite locale), 8D (nessuna auth), 9A (Tailwind minimal dark), 10A
```

Claude produrrà il prompt definitivo. Copialo, esegui `/clear` e incollalo per iniziare lo sviluppo.

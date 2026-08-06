# univ-ouaga-lage2026
Training materials for a 2-day groundwater modeling workshop (Burkina Faso) covering Python-based field data analysis, conceptual modeling, and numerical simulation with USGS MODFLOW 6, FloPy, and ZoneBudget.


# Getting Started: Cloning the Course Repository and Setting Up Your Python Environment     **[[Aller a la version Française]](#version-francaise)**

Welcome to the groundwater modeling training! This guide will walk you, step by step, through everything you need to do **before** the workshop begins:

1. Installing the tools you need (Git Bash and Anaconda or Miniforge)
2. Cloning the course repository
3. Creating the Python virtual environment from the provided `.yml` file

No prior experience with Git or Python virtual environments is required — just follow the steps in order.

---

## Step 1: Install Git Bash

Git Bash gives you a terminal on Windows that can run Git commands.

1. Go to [https://git-scm.com/downloads](https://git-scm.com/downloads)
2. Download the installer for your operating system (Windows users: choose the Windows version).
3. Run the installer and accept the default options (clicking "Next" through the setup is fine for this course).
4. Once installed, open **Git Bash** from your Start Menu (Windows) or Applications folder (Mac).
5. Confirm Git is installed by typing the following into Git Bash and pressing Enter:

```bash
   git --version
```

   You should see a version number printed (e.g., `git version 2.44.0`). If you see this, Git is ready to use.

> **Mac/Linux users:** You already have a built-in terminal (Terminal.app on Mac). You can use that instead of Git Bash for all the steps below.

---

## Step 2: Install Anaconda or Miniforge

You need a Python distribution that includes `conda` (a tool for managing Python environments). Choose **one** of the following:

### Option A: Anaconda (larger, includes many pre-installed packages)

1. Go to [https://www.anaconda.com/download](https://www.anaconda.com/download)
2. Download the installer for your operating system.
3. Run the installer and accept the default settings.
4. During installation, make sure the option **"Add Anaconda to my PATH environment variable"** is checked (on Windows), even though it is sometimes unchecked by default. This ensures `conda` commands work in Git Bash.

### Option B: Miniforge (smaller, recommended if you want a lighter install and access to `mamba`)

1. Go to [https://github.com/conda-forge/miniforge](https://github.com/conda-forge/miniforge)
2. Download the installer for your operating system.
3. Run the installer and accept the default settings.
4. Miniforge comes with both `conda` and `mamba` pre-installed.

5. After installing either option, close and reopen Git Bash, then confirm the install by typing:

```bash
   conda --version
```

   You should see a version number (e.g., `conda 24.1.2`).

---

## Step 3: Clone the Course Repository

Cloning downloads a copy of the course repository (code, notebooks, and the environment file) onto your computer.

1. Open **Git Bash**.
2. Decide where on your computer you want the course folder to live (for example, your Desktop or Documents folder). Navigate there using `cd`. For example, to go to your Desktop:

```bash
   cd ~/Desktop
```

3. Clone the repository by running:

```bash
   git clone https://github.com/moussaguira/univ-ouaga-lage2026.git
```

4. Move into the newly created folder:

```bash
   cd univ-ouaga-lage2026
```

5. Confirm the files downloaded correctly by listing the contents:

```bash
   ls
```

   You should see the course files, including `v_env_lage.yml`.

---

## Step 4: Create the Python Virtual Environment

The file `v_env_lage.yml` lists all the Python packages needed for the course. You will use it to build a self-contained environment named `lage`. Choose **one** of the two options below, depending on whether you installed Anaconda or Miniforge (with `mamba`).

### Option A: Using `conda`

1. From inside the `univ-ouaga-lage2026` folder, run:

```bash
   conda env create -f v_env_lage.yml
```

2. This may take several minutes as packages are downloaded and installed. Wait for it to finish.
3. Activate the environment:

```bash
   conda activate lage
```

### Option B: Using `mamba` (faster, available with Miniforge)

1. From inside the `univ-ouaga-lage2026` folder, run:

```bash
   mamba env create -f v_env_lage.yml
```

2. This will typically be faster than the `conda` option above.
3. Activate the environment:

```bash
   mamba activate lage
```

---

## Step 5: Confirm Everything Works

1. With the environment activated (you should see `(lage)` at the start of your terminal prompt), launch Jupyter to confirm the setup:

```bash
   jupyter notebook
```

2. If Jupyter opens in your browser without errors, your environment is ready for the workshop.

---

## Troubleshooting Tips

- **`conda: command not found`** — Close and reopen Git Bash after installing Anaconda/Miniforge, or restart your computer.
- **Environment creation is slow or fails** — Try the `mamba` option (Option B), which resolves packages faster and more reliably than `conda`.
- **Activation fails** — Double check you typed `conda activate lage` (or `mamba activate lage`) exactly, and that the environment finished creating without errors.
- **Still stuck?** Reach out to the workshop organizers before the session begins so we can troubleshoot together.

---

You're all set! See you at the workshop.

---
---

## Version française  **[[Go to the English Version]](#getting-started-cloning-the-course-repository-and-setting-up-your-python-environment)**

Bienvenue à la formation en modélisation des eaux souterraines ! Ce guide vous accompagnera, étape par étape, dans tout ce que vous devez faire **avant** le début de l'atelier :

1. Installer les outils nécessaires (Git Bash et Anaconda ou Miniforge)
2. Cloner le dépôt (repository) du cours
3. Créer l'environnement virtuel Python à partir du fichier `.yml` fourni

Aucune expérience préalable avec Git ou les environnements virtuels Python n'est requise — suivez simplement les étapes dans l'ordre.

---

### Étape 1 : Installer Git Bash

Git Bash vous fournit un terminal sous Windows capable d'exécuter des commandes Git.

1. Rendez-vous sur [https://git-scm.com/downloads](https://git-scm.com/downloads)
2. Téléchargez l'installateur correspondant à votre système d'exploitation (utilisateurs Windows : choisissez la version Windows).
3. Exécutez l'installateur et acceptez les options par défaut (cliquer sur « Suivant » tout au long de l'installation convient parfaitement pour ce cours).
4. Une fois l'installation terminée, ouvrez **Git Bash** depuis le menu Démarrer (Windows) ou le dossier Applications (Mac).
5. Vérifiez que Git est bien installé en tapant la commande suivante dans Git Bash, puis appuyez sur Entrée :

```bash
   git --version
```

   Un numéro de version devrait s'afficher (par ex. `git version 2.44.0`). Si c'est le cas, Git est prêt à être utilisé.

> **Utilisateurs Mac/Linux :** Vous disposez déjà d'un terminal intégré (Terminal.app sur Mac). Vous pouvez l'utiliser à la place de Git Bash pour toutes les étapes ci-dessous.

---

### Étape 2 : Installer Anaconda ou Miniforge

Vous avez besoin d'une distribution Python qui inclut `conda` (un outil de gestion des environnements Python). Choisissez **l'une** des deux options suivantes :

#### Option A : Anaconda (plus volumineuse, inclut de nombreux paquets préinstallés)

1. Rendez-vous sur [https://www.anaconda.com/download](https://www.anaconda.com/download)
2. Téléchargez l'installateur correspondant à votre système d'exploitation.
3. Exécutez l'installateur et acceptez les paramètres par défaut.
4. Pendant l'installation, assurez-vous que l'option **« Add Anaconda to my PATH environment variable »** est cochée (sous Windows), même si elle est parfois décochée par défaut. Cela garantit que les commandes `conda` fonctionnent dans Git Bash.

#### Option B : Miniforge (plus légère, recommandée si vous souhaitez une installation allégée et l'accès à `mamba`)

1. Rendez-vous sur [https://github.com/conda-forge/miniforge](https://github.com/conda-forge/miniforge)
2. Téléchargez l'installateur correspondant à votre système d'exploitation.
3. Exécutez l'installateur et acceptez les paramètres par défaut.
4. Miniforge est fourni avec `conda` et `mamba` déjà installés.

5. Après avoir installé l'une ou l'autre option, fermez puis rouvrez Git Bash, et vérifiez l'installation en tapant :

```bash
   conda --version
```

   Un numéro de version devrait s'afficher (par ex. `conda 24.1.2`).

---

### Étape 3 : Cloner le dépôt du cours

Le clonage télécharge une copie du dépôt du cours (code, notebooks et fichier d'environnement) sur votre ordinateur.

1. Ouvrez **Git Bash**.
2. Décidez où, sur votre ordinateur, vous souhaitez placer le dossier du cours (par exemple, votre Bureau ou votre dossier Documents). Naviguez-y à l'aide de `cd`. Par exemple, pour aller sur votre Bureau :

```bash
   cd ~/Desktop
```

3. Clonez le dépôt en exécutant :

```bash
   git clone https://github.com/moussaguira/univ-ouaga-lage2026.git
```

4. Déplacez-vous dans le dossier nouvellement créé :

```bash
   cd univ-ouaga-lage2026
```

5. Vérifiez que les fichiers ont bien été téléchargés en listant le contenu du dossier :

```bash
   ls
```

   Vous devriez voir les fichiers du cours, y compris `v_env_lage.yml`.

---

### Étape 4 : Créer l'environnement virtuel Python

Le fichier `v_env_lage.yml` répertorie tous les paquets Python nécessaires pour le cours. Vous allez l'utiliser pour créer un environnement autonome nommé `lage`. Choisissez **l'une** des deux options ci-dessous, selon que vous avez installé Anaconda ou Miniforge (avec `mamba`).

#### Option A : Avec `conda`

1. Depuis l'intérieur du dossier `univ-ouaga-lage2026`, exécutez :

```bash
   conda env create -f v_env_lage.yml
```

2. Cela peut prendre plusieurs minutes le temps que les paquets soient téléchargés et installés. Attendez que le processus se termine.
3. Activez l'environnement :

```bash
   conda activate lage
```

#### Option B : Avec `mamba` (plus rapide, disponible avec Miniforge)

1. Depuis l'intérieur du dossier `univ-ouaga-lage2026`, exécutez :

```bash
   mamba env create -f v_env_lage.yml
```

2. Cette méthode est généralement plus rapide que l'option `conda` ci-dessus.
3. Activez l'environnement :

```bash
   mamba activate lage
```

---

### Étape 5 : Vérifier que tout fonctionne

1. Une fois l'environnement activé (vous devriez voir `(lage)` au début de l'invite de votre terminal), lancez Jupyter pour vérifier l'installation :

```bash
   jupyter notebook
```

2. Si Jupyter s'ouvre dans votre navigateur sans erreur, votre environnement est prêt pour l'atelier.

---

### Conseils de dépannage

- **`conda: command not found`** — Fermez et rouvrez Git Bash après avoir installé Anaconda/Miniforge, ou redémarrez votre ordinateur.
- **La création de l'environnement est lente ou échoue** — Essayez l'option `mamba` (Option B), qui résout les paquets plus rapidement et plus efficacement que `conda`.
- **L'activation échoue** — Vérifiez que vous avez bien tapé `conda activate lage` (ou `mamba activate lage`) exactement, et que l'environnement s'est créé sans erreur.
- **Toujours bloqué ?** Contactez les organisateurs de l'atelier avant le début de la séance afin que nous puissions résoudre le problème ensemble.

---

Vous êtes prêt(e) ! À bientôt à l'atelier.

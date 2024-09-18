Here is the English version of the `README.md` for your project:

### `README.md`

```markdown
# WP Monitor Project

This project includes a set of scripts to easily set up and manage a Python virtual environment and integrate Git into your workflow. These scripts simplify the project setup by automating the initial steps, virtual environment activation, and Git integration.

## Script Structure

- **`init_project.sh`**: Creates a virtual environment, updates `.gitignore` by adding the `.env` file, installs initial dependencies, and initializes a Git repository if it doesn't exist.
- **`start_env.sh`**: Activates the existing virtual environment.
- **`run.sh`**: Checks if the virtual environment exists. If it does, it starts the environment; otherwise, it runs the initialization script.
- **`README.md`**: This file contains instructions on how to use the scripts.

## Prerequisites

Before using these scripts, make sure you have:

- Python 3 installed.
- Git installed.
- The `python-dotenv` package will be automatically installed when running the `init_project.sh` script.

## How to Start

To get started with this project, follow these steps:

1. **Clone the project**:

   ```bash
   git clone <repository-url>
   cd wp-monitor
   ```

2. **Run the `run.sh` script**:

   The main script to run is `run.sh`, which automatically decides what to do based on the project status.

   - If the virtual environment doesn’t exist, it will be created, and the project will be initialized (including Git).
   - If the virtual environment already exists, it will be activated.

   **IMPORTANT**: Use the `source` command to execute the script and keep the virtual environment active in your current session.

   ```bash
   source ./run.sh
   ```

   This command will execute the script, which will then either initialize the project or simply activate the existing virtual environment.

3. **Project development**:

   After running the command above, the virtual environment will be active, and you can start working on your project.

### Detailed Script Descriptions

#### `init_project.sh`

This script performs the following operations:
- Creates a Python virtual environment called `venv`.
- Installs the `python-dotenv` package.
- Adds the `.env` file to `.gitignore` if it is not already present.
- Initializes a Git repository (if it doesn’t already exist) and creates an initial commit.

To manually run this script (though `run.sh` usually handles this automatically):

```bash
./init_project.sh
```

#### `start_env.sh`

Activates the virtual environment if it exists. If the virtual environment doesn’t exist, an error message will be displayed. Normally, you won’t need to manually run this script since it is automatically executed by `run.sh` if the virtual environment is present.

To manually start the virtual environment:

```bash
./start_env.sh
```

#### `run.sh`

This script checks if the `venv` virtual environment directory exists:
- If the `venv` directory is present, it runs `start_env.sh` to activate the environment.
- If the `venv` directory does not exist, it runs `init_project.sh` to set up the project.

To run this script, use the `source` command to keep the virtual environment active in your current session:

```bash
source ./run.sh
```

### Final Notes

Make sure to use `source ./run.sh` to keep the virtual environment active in your session. If you don’t, the environment will not persist after the script finishes.

In this project, the `.env` file will not be tracked by Git, as it is automatically added to `.gitignore`.

If you encounter any issues or have questions, feel free to open an issue or contact me.

## License

This project is open-source and distributed under the MIT license.

## Disclaimer

**This software is provided "as is", without any warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose, and non-infringement. In no event shall the authors or copyright holders be liable for any claim, damages, or other liability, whether in an action of contract, tort, or otherwise, arising from, out of, or in connection with the software or the use or other dealings in the software.**

Use these scripts at your own risk. We do not provide any guarantees regarding their correctness, security, or performance in your environment. It is recommended that you thoroughly test them before using them in production.
```

This `README.md` provides a complete guide in English

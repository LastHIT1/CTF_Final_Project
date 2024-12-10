# CTF_Final_Project
## BY: Andres Ferreira, Alejandro Terzini, Valery Pena
Welcome to the Capture The Flag (CTF) Challenges!

This is a Linux-based CTF exercise, make sure when attemping this you donwload and run on a Linux enviornmnet.

This CTF setup consists of five levels, each designed to test your skills in Linux command-line operations, file handling, process management, and more.

Follow the instructions below to navigate through the setup and start the challenges:


CHALLENGE STRUCTURE:
=============================================
1. Each level is stored in its own directory under the "Final" folder.
2. Navigate to the directory for the desired challenge, e.g.:
   cd Final/level1

3. Each level contains:
   - A challenge script (e.g., level_one.sh) to set up the environment.
   - A README.txt file (specific to the challenge) with hints and instructions.


HOW TO START A CHALLENGE:
=============================================
1. Navigate to the directory of the level you want to start:
   cd Final/level<number>

2. Run the setup script for the challenge. For example, in Level 1:
   ./level_one.sh

3. Follow the instructions displayed after running the script.


RESETTING A CHALLENGE:
=============================================
- If a challenge modifies permissions or processes, instructions to reset will be included after the challenge script runs.
- Typically, resetting involves commands like `chmod` to restore permissions or rerunning the setup script to restart the environment.


LEVEL DESCRIPTIONS:
=============================================
1. **Level 1: Hidden File with Base64 Encoded Flag**
   - Find a hidden file and decode its base64 content to reveal the flag.

2. **Level 2: Find the Flag in the Logs**
   - Search a log file to locate and extract a flag using text processing tools.

3. **Level 3: The Misleading Maze**
   - Navigate a directory maze filled with decoy files to locate the real flag.

4. **Level 4: Escaping the Restricted Directory**
   - Handle file permissions and locate a hidden flag outside a restricted directory.

5. **Level 5: Find the Running Process**
   - Identify a rogue process, monitor dynamic files, and extract the hidden flag.


HELP AND HINTS:
=============================================
- Each level's README.txt file contains hints to help you solve the challenge.
- Make use of Linux commands like `ls`, `find`, `grep`, `awk`, `ps`, and `chmod` to navigate and complete the challenges.


HAVE FUN!
=============================================
Good luck, and may the best CTF champion emerge victorious!


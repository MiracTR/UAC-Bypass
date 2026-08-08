# Program Launcher

A simple Windows batch script with Turkish and English language support for launching programs from the current directory.

## 🌐 Languages

* 🇹🇷 Turkish
* 🇬🇧 English

## ✨ Features

* Simple command-line interface
* Turkish / English language selection
* Checks whether the specified program exists
* Launches `.exe` and other executable files
* Works directly from a folder without installation
* Uses Windows Application Compatibility settings

## ⚠️ Important

This project is **not a guaranteed UAC bypass**.

The script uses the Windows compatibility setting:

```bat
set __compat_layer=runasinvoker
```

This can affect how applications requesting administrator privileges are launched. However, it does **not grant administrator privileges** to the user.

Programs that genuinely require administrator permissions may fail to start or may not function correctly.

Use this project only on systems and applications you are authorized to use.

## 📥 Installation

No installation is required.

1. Download the `.bat` file.
2. Place it in the same folder as the program you want to launch.
3. Run the `.bat` file.
4. Select your language.
5. Enter the program filename.

## ▶️ Usage Example

Suppose your folder contains:

```text
Program Launcher.bat
setup.exe
```

Run:

```text
Program Launcher.bat
```

Select:

```text
[1] Turkce
[2] English
```

Then enter:

```text
setup.exe
```

The launcher will check whether `setup.exe` exists and attempt to start it.

## 🖥️ Example

```text
================================
    PROGRAM ACICI / LAUNCHER
================================

[1] Turkce
[2] English

Seciminiz / Your choice: 2

Enter the exact name of the application you want to open.
Example: setup.exe

Program name: setup.exe

Opening "setup.exe"...
```

## 📁 Supported Usage

The launcher can be used with executable files such as:

```text
setup.exe
installer.exe
program.exe
launcher.exe
```

The target program should normally be placed in the same directory as the batch file.

## 🔒 Security & Permissions

The script does not magically give the current user administrator privileges.

Windows security restrictions still apply. If an application requires elevated permissions for an operation, that operation may fail.

Do not use the script to bypass security controls on computers or software that you do not own or have permission to administer.

## 📜 License

This project is released under the MIT License.

See [`LICENSE`](LICENSE) for the full license text.

## 👤 Author

Created as a small Windows batch utility and learning project.

# Keyloggers

Educational security research and telemetry tools demonstrating keystroke capture and remote exfiltration across different operating systems.

> **Disclaimer**: This repository is created strictly for educational purposes, authorized security evaluations, and telemetry research. Unauthorized use on computers without explicit consent is illegal.

## Structure

- **[keylogger-linux/](./keylogger-linux/)**: Linux X11-based implementation using `libX11` and `libcurl` for HTTP exfiltration.
- **[keylogger-windows/](./keylogger-windows/)**: Windows Win32 implementation using `GetAsyncKeyState`, active window context tracking via `GetForegroundWindow`, and HTTP POST via `WinINet`.
- **[KL-test/](./KL-test/)**: Development and testing scripts.

## Requirements

### Linux Client
- GCC / Clang
- `libx11-dev` (or `libx11` on Arch)
- `libcurl4-openssl-dev` (or `curl` on Arch)

### Windows Client
- MSVC (`cl.exe`) or MinGW-w64 (`gcc`)
- Win32 libraries (`user32`, `kernel32`, `wininet`, `advapi32`)

### Server
- PHP 7.4+ web server (Apache, Nginx, Caddy, etc.) for `receiver.php`.

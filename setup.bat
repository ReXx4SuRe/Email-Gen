@echo off
echo Installing Python dependencies...
pip install -r requirements.txt

if %errorlevel% neq 0 (
    echo Failed to install Python dependencies. Exiting.
    exit /b %errorlevel%
)

echo Python dependencies installed successfully.
echo Running Email Gen.exe...
start "" Email Gen.exe

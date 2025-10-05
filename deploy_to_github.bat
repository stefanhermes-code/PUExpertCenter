@echo off
echo Setting up PU ExpertCenter Enterprise for GitHub deployment...

echo.
echo STEP 1: Check if Git is installed...
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Git is NOT installed. Please install it first:
    echo.
    echo 1. Go to: https://git-scm.com/download/win
    echo 2. Download and install Git with default settings
    echo 3. Restart this batch file after installation
    echo.
    pause
    exit /b 1
) else (
    echo Git is installed! ✓
)

echo.
echo STEP 2: Create GitHub repository (if not done already)
echo Go to: https://github.com/new
echo - Repository name: pu-expertcenter-enterprise
echo - Description: AI-powered polyurethane expert system
echo - Make it Public (required for free Streamlit Cloud)
echo - Don't initialize with README
echo.
echo Press any key when repository is created...
pause

echo.
echo STEP 3: Get your GitHub username
set /p GITHUB_USERNAME="Enter your GitHub username: "

echo.
echo STEP 4: Configure Git identity...
set /p GIT_EMAIL="Enter your email address: "
set /p GIT_NAME="Enter your full name: "
git config --global user.email "%GIT_EMAIL%"
git config --global user.name "%GIT_NAME%"

echo.
echo STEP 5: Uploading files to GitHub...
echo This may take a few minutes due to the large Document Database...

git init
git add .
git commit -m "Initial commit - PU ExpertCenter Enterprise deployment"
git branch -M main
git remote add origin https://github.com/%GITHUB_USERNAME%/pu-expertcenter-enterprise.git
git push -u origin main

echo.
echo STEP 6: Deploy to Streamlit Cloud
echo Go to: https://share.streamlit.io
echo 1. Sign in with GitHub
echo 2. Click "New app"
echo 3. Select your pu-expertcenter-enterprise repository
echo 4. Main file path: app.py (for internal) or app_corporate.py (for corporate)
echo 5. Add your API keys in the secrets section
echo.
echo Deployment complete! 🚀
pause

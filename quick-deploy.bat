@echo off
echo ========================================
echo    CONFLIX DEPLOYMENT PREPARATION
echo ========================================
echo.

echo [1/4] Checking if Git is initialized...
if not exist ".git" (
    echo Initializing Git repository...
    git init
    echo Git repository initialized!
) else (
    echo Git repository already exists.
)
echo.

echo [2/4] Adding all files to Git...
git add .
echo Files added to Git staging area.
echo.

echo [3/4] Creating initial commit...
git commit -m "Initial commit - Conflix app ready for deployment"
echo Commit created.
echo.

echo [4/4] Deployment preparation complete!
echo.
echo ========================================
echo           NEXT STEPS
echo ========================================
echo 1. Create a GitHub repository
echo 2. Add remote origin: git remote add origin YOUR_REPO_URL
echo 3. Push to GitHub: git push -u origin main
echo 4. Follow the BEGINNER_DEPLOYMENT_GUIDE.md
echo ========================================
echo.
pause
# 🚀 Beginner's Guide to Deploy Conflix

**Complete Step-by-Step Deployment Guide for Beginners**

This guide will help you deploy your Conflix movie streaming application to the internet for free using Vercel and Netlify.

## 📋 What You'll Need

1. **GitHub Account** (free) - to store your code
2. **Vercel Account** (free) - for backend deployment
3. **Netlify Account** (free) - for frontend deployment
4. **MongoDB Atlas Account** (free) - for database (already configured)
5. **TMDB API Key** (free) - for movie data

## 🎯 Overview

We'll deploy:
- **Backend** (server) → Vercel
- **Frontend** (client) → Netlify
- **Database** → MongoDB Atlas (already set up)

---

## Step 1: Prepare Your Project

### 1.1 Create GitHub Repository

1. Go to [GitHub.com](https://github.com) and sign in
2. Click the **"+"** button in the top right
3. Select **"New repository"**
4. Name it: `conflix-app`
5. Make it **Public**
6. Click **"Create repository"**

### 1.2 Upload Your Code

**Option A: Using GitHub Desktop (Recommended for beginners)**
1. Download [GitHub Desktop](https://desktop.github.com/)
2. Clone your new repository
3. Copy all your Conflix files into the cloned folder
4. Commit and push the changes

**Option B: Using Git Commands**
```bash
# In your Conflix project folder
git init
git add .
git commit -m "Initial commit"
git remote add origin https://github.com/YOUR_USERNAME/conflix-app.git
git push -u origin main
```

---

## Step 2: Deploy Backend to Vercel

### 2.1 Create Vercel Account
1. Go to [Vercel.com](https://vercel.com)
2. Click **"Sign Up"**
3. Choose **"Continue with GitHub"**
4. Authorize Vercel to access your GitHub

### 2.2 Deploy Backend
1. In Vercel dashboard, click **"New Project"**
2. Find your `conflix-app` repository
3. Click **"Import"**
4. **IMPORTANT**: Change the root directory to `server`
   - Click **"Edit"** next to Root Directory
   - Type: `server`
   - Click **"Continue"**
5. Click **"Deploy"**

### 2.3 Configure Environment Variables
1. After deployment, go to your project dashboard
2. Click **"Settings"** tab
3. Click **"Environment Variables"** in the sidebar
4. Add these variables one by one:

```
NODE_ENV = production
PORT = 5000
DATABASE = your_mongodb_connection_string
USER = your_mongodb_username
DATABASE_PASSWORD = your_mongodb_password
JWT_SECRET = your_jwt_secret_key
TMDB_AUTH = your_tmdb_api_key
TMDB_URL = https://api.themoviedb.org/3
```

**Where to find these values:**
- Copy them from your `server/.env` file
- For TMDB_AUTH: Get from [TMDB API](https://www.themoviedb.org/settings/api)

### 2.4 Redeploy
1. Go to **"Deployments"** tab
2. Click the **"..."** menu on the latest deployment
3. Click **"Redeploy"**
4. Wait for deployment to complete

### 2.5 Get Your Backend URL
1. Copy the deployment URL (e.g., `https://conflix-backend.vercel.app`)
2. Test it by visiting: `https://your-backend-url.vercel.app/api/test`

---

## Step 3: Deploy Frontend to Netlify

### 3.1 Create Netlify Account
1. Go to [Netlify.com](https://netlify.com)
2. Click **"Sign Up"**
3. Choose **"GitHub"**
4. Authorize Netlify

### 3.2 Deploy Frontend
1. Click **"New site from Git"**
2. Choose **"GitHub"**
3. Select your `conflix-app` repository
4. Configure build settings:
   - **Base directory**: `client`
   - **Build command**: `npm run build`
   - **Publish directory**: `client/dist`
5. Click **"Deploy site"**

### 3.3 Update Backend URL (If Needed)
1. If your Vercel backend URL is different from `conflix-backend.vercel.app`
2. Go to Netlify site settings
3. Click **"Build & deploy"** → **"Environment variables"**
4. Add: `VITE_API_URL = https://your-actual-backend-url.vercel.app`

---

## Step 4: Final Configuration

### 4.1 Update Backend URL in Code
If your backend URL is different, update these files:

**In `client/vercel.json`:**
```json
"destination": "https://YOUR_ACTUAL_BACKEND_URL.vercel.app/api/:path"
```

**In `client/netlify.toml`:**
```toml
to = "https://YOUR_ACTUAL_BACKEND_URL.vercel.app/:splat"
```

### 4.2 Redeploy Frontend
1. Commit and push changes to GitHub
2. Netlify will automatically redeploy

---

## Step 5: Test Your Deployment

### 5.1 Test Backend
Visit: `https://your-backend-url.vercel.app/api/test`
Should return: `{"message": "API is working!"}`

### 5.2 Test Frontend
1. Visit your Netlify site URL
2. Try to:
   - Register a new account
   - Login
   - Browse movies
   - Add movies to watchlist

---

## 🔧 Troubleshooting

### Backend Issues
- **500 Error**: Check environment variables in Vercel
- **Database Connection**: Verify MongoDB Atlas IP whitelist (allow all: 0.0.0.0/0)
- **CORS Error**: Check if frontend URL is in CORS settings

### Frontend Issues
- **API Calls Failing**: Check if backend URL is correct
- **Build Failing**: Check if all dependencies are in package.json
- **404 on Refresh**: Netlify redirects should handle this automatically

### Common Fixes
1. **Clear browser cache**
2. **Check browser console for errors**
3. **Verify all environment variables are set**
4. **Ensure MongoDB Atlas allows connections from anywhere**

---

## 📱 Custom Domain (Optional)

### For Netlify (Frontend)
1. Go to **"Domain settings"**
2. Click **"Add custom domain"**
3. Follow DNS configuration instructions

### For Vercel (Backend)
1. Go to **"Settings"** → **"Domains"**
2. Add your custom domain
3. Update frontend configuration with new backend URL

---

## 🎉 You're Done!

Your Conflix app is now live on the internet! Share the Netlify URL with friends and family.

### Your URLs:
- **Frontend**: `https://your-site-name.netlify.app`
- **Backend**: `https://your-backend.vercel.app`

### Next Steps:
1. **Monitor usage** in Vercel and Netlify dashboards
2. **Set up analytics** (Google Analytics, etc.)
3. **Add more features** to your app
4. **Get a custom domain** for a professional look

---

## 📞 Need Help?

- **Vercel Docs**: [vercel.com/docs](https://vercel.com/docs)
- **Netlify Docs**: [docs.netlify.com](https://docs.netlify.com)
- **MongoDB Atlas**: [docs.atlas.mongodb.com](https://docs.atlas.mongodb.com)

**Remember**: All these services have free tiers that are perfect for learning and small projects!
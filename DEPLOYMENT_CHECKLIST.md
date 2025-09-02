# 📋 Deployment Checklist

**Use this checklist to track your deployment progress**

## Pre-Deployment Setup
- [ ] GitHub account created
- [ ] Vercel account created (linked to GitHub)
- [ ] Netlify account created (linked to GitHub)
- [ ] TMDB API key obtained
- [ ] MongoDB Atlas database configured

## Code Preparation
- [x] Backend Vercel configuration (`server/vercel.json`) ✅
- [x] Serverless entry point (`server/api/index.js`) ✅
- [x] Backend package.json updated ✅
- [x] Environment variables template (`server/.env.example`) ✅
- [x] Frontend configurations updated ✅
- [x] Deployment documentation created ✅

## GitHub Repository
- [ ] Repository created on GitHub
- [ ] All code pushed to repository
- [ ] Repository is public (for free deployments)

## Backend Deployment (Vercel)
- [ ] Project imported from GitHub
- [ ] Root directory set to `server`
- [ ] Initial deployment completed
- [ ] Environment variables configured:
  - [ ] NODE_ENV
  - [ ] PORT
  - [ ] DATABASE
  - [ ] USER
  - [ ] DATABASE_PASSWORD
  - [ ] JWT_SECRET
  - [ ] TMDB_AUTH
  - [ ] TMDB_URL
- [ ] Redeployed after environment variables
- [ ] Backend URL tested (`/api/test` endpoint)

## Frontend Deployment (Netlify)
- [ ] Site created from GitHub repository
- [ ] Build settings configured:
  - [ ] Base directory: `client`
  - [ ] Build command: `npm run build`
  - [ ] Publish directory: `client/dist`
- [ ] Initial deployment completed
- [ ] Frontend URL tested

## Final Testing
- [ ] Backend API endpoints working
- [ ] Frontend loads correctly
- [ ] User registration works
- [ ] User login works
- [ ] Movie browsing works
- [ ] Watchlist functionality works
- [ ] All API calls successful

## Optional Enhancements
- [ ] Custom domain configured
- [ ] SSL certificate active
- [ ] Analytics set up
- [ ] Error monitoring configured

## Troubleshooting Completed
- [ ] CORS issues resolved
- [ ] Environment variables verified
- [ ] Database connection tested
- [ ] API endpoints responding

---

## 🎯 Quick Reference

### Important URLs
- **GitHub Repo**: `https://github.com/YOUR_USERNAME/conflix-app`
- **Backend (Vercel)**: `https://conflix-backend.vercel.app`
- **Frontend (Netlify)**: `https://YOUR_SITE_NAME.netlify.app`

### Key Files Modified
- `server/vercel.json` - Vercel deployment config
- `server/api/index.js` - Serverless entry point
- `server/package.json` - Build scripts added
- `client/vercel.json` - Frontend API routing
- `client/netlify.toml` - Netlify redirects

### Environment Variables Needed
```
NODE_ENV=production
PORT=5000
DATABASE=mongodb+srv://...
USER=your_username
DATABASE_PASSWORD=your_password
JWT_SECRET=your_secret_key
TMDB_AUTH=your_tmdb_api_key
TMDB_URL=https://api.themoviedb.org/3
```

---

**✅ = Already completed for you**
**☐ = You need to do this step**
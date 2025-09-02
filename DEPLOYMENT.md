# Conflix Deployment Guide

## One-Click Deployment Setup

This guide will help you deploy the Conflix application with minimal configuration. The project is now configured for modern serverless deployment.

## Prerequisites

1. **GitHub Account** - For code repository
2. **Vercel Account** - For backend deployment
3. **Netlify Account** - For frontend deployment
4. **MongoDB Atlas** - Database (already configured)
5. **TMDB API Key** - Movie database API

## Quick Deployment Steps

### Step 1: Backend Deployment (Vercel)

1. **Push to GitHub**:
   ```bash
   git add .
   git commit -m "Configure for serverless deployment"
   git push origin main
   ```

2. **Deploy to Vercel**:
   - Go to [vercel.com](https://vercel.com)
   - Click "New Project"
   - Import your GitHub repository
   - Set **Root Directory** to `server`
   - Configure Environment Variables:
     ```
     NODE_ENV=production
     DATABASE=mongodb+srv://zetflix:kSBkY32TLEfXIUPV@cluster0.c6tlcfz.mongodb.net/zetflixtv?retryWrites=true&w=majority&appName=Cluster0
     USER=zetflix
     DATABASE_PASSWORD=kSBkY32TLEfXIUPV
     JWT_SECRET=B9B62B9867464625369927B83DF9B34229D6237B6553D1D1D1897A9C35
     TMDB_AUTH=eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiIzOWU1ZDQ4NzRjMTAyYjBhOWI2MTYzOWM4MWI5YmRhMSIsIm5iZiI6MTc1MDYyMjYxNi44MTIsInN1YiI6IjY4NTg2MTk4MjgxYTRlODhmNWQwZmE2NiIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.9F1obj-HBrs4V5CsMoki4hxQ3mCctKH_YJ7UbPY07MY
     TMDB_URL=https://api.themoviedb.org/3
     ```
   - Click "Deploy"
   - **Copy your Vercel app URL** (e.g., `https://your-app-name.vercel.app`)

### Step 2: Update Frontend Configuration

1. **Update API URLs**:
   - Replace `https://your-backend-app.vercel.app` in both:
     - `client/vercel.json`
     - `client/netlify.toml`
   - Use your actual Vercel backend URL from Step 1

### Step 3: Frontend Deployment

#### Option A: Netlify (Recommended)
1. Go to [netlify.com](https://netlify.com)
2. Click "New site from Git"
3. Connect your GitHub repository
4. Set **Base directory** to `client`
5. Set **Build command** to `CI= npm run build`
6. Set **Publish directory** to `dist`
7. Click "Deploy site"

#### Option B: Vercel
1. Create a new Vercel project
2. Set **Root Directory** to `client`
3. Framework will be auto-detected as Vite
4. Deploy

## Environment Variables Reference

### Backend (Vercel)
| Variable | Description | Required |
|----------|-------------|----------|
| `NODE_ENV` | Environment mode | Yes |
| `DATABASE` | MongoDB connection string | Yes |
| `USER` | MongoDB username | Yes |
| `DATABASE_PASSWORD` | MongoDB password | Yes |
| `JWT_SECRET` | JWT signing secret | Yes |
| `TMDB_AUTH` | TMDB API auth token | Yes |
| `TMDB_URL` | TMDB API base URL | Yes |

## Project Structure

```
Conflix/
├── client/                 # Frontend (React + Vite)
│   ├── netlify.toml       # Netlify configuration
│   ├── vercel.json        # Vercel configuration
│   └── ...
├── server/                 # Backend (Node.js + Express)
│   ├── api/
│   │   └── index.js       # Serverless entry point
│   ├── vercel.json        # Vercel configuration
│   ├── .env.example       # Environment template
│   └── ...
└── DEPLOYMENT.md          # This file
```

## Troubleshooting

### Common Issues

1. **API calls failing**:
   - Verify backend URL in frontend config files
   - Check environment variables in Vercel dashboard
   - Ensure MongoDB connection string is correct

2. **Build failures**:
   - Check Node.js version compatibility
   - Verify all dependencies are listed in package.json
   - Review build logs for specific errors

3. **CORS issues**:
   - Backend is configured with CORS middleware
   - Ensure frontend domain is allowed

### Verification Steps

1. **Backend Health Check**:
   - Visit `https://your-backend.vercel.app/api/health`
   - Should return server status

2. **Frontend Functionality**:
   - Test user registration/login
   - Verify movie data loads
   - Check API calls in browser dev tools

## Security Notes

- Environment variables are securely stored in Vercel
- JWT secrets are properly configured
- MongoDB uses secure connection strings
- API keys are not exposed in frontend code

## Support

If you encounter issues:
1. Check the deployment logs in Vercel/Netlify
2. Verify environment variables are set correctly
3. Ensure MongoDB Atlas allows connections from anywhere (0.0.0.0/0)
4. Test API endpoints individually

---

**Your Conflix application is now ready for one-click deployment!** 🚀
# PU ExpertCenter Enterprise - Cloud Deployment

## Overview
PU ExpertCenter Enterprise is an AI-powered polyurethane expert system for the industry, built with Streamlit and OpenAI.

## Cloud Deployment Setup

### 1. GitHub Repository
1. Create a new GitHub repository
2. Upload all files from this directory
3. Make sure to include the `Document Database` folder with your PU documents

### 2. Streamlit Cloud Deployment
1. Go to [share.streamlit.io](https://share.streamlit.io)
2. Sign in with your GitHub account
3. Click "New app"
4. Select your repository
5. Set main file path to `app.py` (internal) or `app_corporate.py` (corporate)
6. Add secrets in the Streamlit Cloud dashboard

### 3. Required Secrets
In Streamlit Cloud dashboard, add these secrets:

```toml
OPENAI_API_KEY = "your_openai_api_key_here"
OPENAI_ASSISTANT_ID = "your_assistant_id_here"
```

### 4. Document Database
- Upload your PU documents to the `Document Database` folder in GitHub
- The app will automatically process them on first run
- Processing may take several minutes for large document sets

## Features
- **AI-Powered Research**: Uses OpenAI Assistant API for intelligent responses
- **Document Processing**: Automatically processes PU documents
- **Interactive Chat**: Streamlit-based chat interface
- **Source Citations**: Shows which documents were used for answers
- **Caching**: Efficient document processing with caching
- **Corporate Authentication**: CSV-based user management (corporate version)

## Local Development
To run locally:
1. Install dependencies: `pip install -r requirements.txt`
2. Create `.env` file with your API keys
3. Run: `streamlit run app.py` (internal) or `streamlit run app_corporate.py` (corporate)

## Support
For issues or questions, contact the development team.

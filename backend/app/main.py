from fastapi import FastAPI

app = FastAPI(
    title="BetCycle API",
    description="A DevOps quest from exploration to production",
    version="0.1.0"
)


@app.get("/")
async def root():
    """Root endpoint - Hello World"""
    return {"message": "Hello World from BetCycle!"}


@app.get("/health")
async def health_check():
    """Health check endpoint"""
    return {"status": "healthy"}

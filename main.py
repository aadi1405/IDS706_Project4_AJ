from fastapi import FastAPI
import uvicorn
from mylib.logic import search_wiki
from mylib.logic import wiki as wikilogic
from mylib.logic import phrases as wikiphrases

app = FastAPI()


@app.get("/")
async def root():
    return {
        "message": "Wikipedia API. Call - search/name or wiki/value or phrases/value"
    }


@app.get("/search/{value}")
async def search(value: str):
    """to search in wikipedia"""

    result = search_wiki(value)
    return {"result": result}


@app.get("/wiki/{name}")
async def search(name: str):
    """to find in wikipedia"""

    result2 = wikilogic(name)
    return {"result": result2}


@app.get("/phrase/{name}")
async def phrases(name: str):
    """to find in wikipedia"""

    result3 = wikiphrases(name)
    print(name)
    print(result3)
    return {"result": result3}


if __name__ == "__main__":
    uvicorn.run(app, port=8080, host="0.0.0.0")

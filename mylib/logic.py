import wikipedia
from textblob import TextBlob


def wiki(name="2022_FIFA_World_Cup", length=1):
    # this is a wikipedia fetcher

    my_wiki = wikipedia.summary(name, length)
    return my_wiki


def search_wiki(name):
    # this is a wikipedia search
    results = wikipedia.search(name)
    return results


def phrases(name):
    # this returns phrases
    page = wiki(name)
    blob = TextBlob(page)
    phrase = blob.noun_phrases
    return phrase


def page_wiki(name):
    # this is a wikipedia page
    page = wikipedia.page(name)
    return page

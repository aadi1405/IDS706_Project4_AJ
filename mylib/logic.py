import wikipedia


def wiki(name="2022_FIFA_World_Cup", length=1):
    # this is a wikipedia fetcher

    my_wiki = wikipedia.summary(name, length)
    return my_wiki

def search_wiki(name):
    # this is a wikipedia search
    results = wikipedia.search(name)
    return results

def page_wiki(name):
    # this is a wikipedia page
    page = wikipedia.page(name)
    return page

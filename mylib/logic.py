import wikipedia


def wiki(name="2022_FIFA_World_Cup", length=1):
    # this is a wikipedia fetcher

    my_wiki = wikipedia.summary(name, length)
    return my_wiki

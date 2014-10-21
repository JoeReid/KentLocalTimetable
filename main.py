import urllib.request


class connectivity_checker(object):
    def __init__(self, ip='http://129.12.10.249'):
        self.ip = ip

    def check(self):
        try:
            response = urllib.request.urlopen(self.ip, timeout=1)
            return True
        except urllib.request.URLError as err:
            pass
        return False


class downloader(object):
    def __init__(self, url='http://www.kent.ac.uk/timetabling/ical/92068.ics', file_name='temp.ics'):
        self.url = url
        self.file_name = file_name

    def download(self):
        urllib.request.urlretrieve(self.url, self.file_name)

c = connectivity_checker()
print(c.check())

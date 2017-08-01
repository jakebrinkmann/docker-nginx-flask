from flask import Flask
import memcache

app = Flask(__name__)
cache = memcache.Client(['memcached:11211'], debug=0)

@app.route('/api')
def home():
    return 'Hello world! - {}'.format(cache.get('hello-world'))


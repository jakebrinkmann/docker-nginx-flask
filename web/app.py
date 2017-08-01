from flask import Flask
import memcache
import psycopg2
conn = psycopg2.connect("host=postgres dbname=postgres user=postgres")
cur = conn.cursor()
SQL = 'SELECT * from hello_world where id=(%s)'

app = Flask(__name__)
cache = memcache.Client(['memcached:11211'], debug=0)

@app.route('/')
@app.route('/<int:index>')
def home(index=1):
    cur.execute(SQL, (index,))
    dat = cur.fetchall()
    cache.set('hello-world', dat, 30)
    return 'Hello world! - {}'.format(index)


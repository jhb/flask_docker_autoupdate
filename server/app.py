from flask import Flask
import flask
import os
import datetime
import yaml

path = os.path.dirname(__file__)

from chameleon import PageTemplateLoader



app = Flask(__name__)


@app.route("/")
def hello_world():
    templates = PageTemplateLoader(os.path.join(path, "templates"), 'pt')
    template = templates['hello']
    y = yaml.dump(dict(foo=['bar','baz']))
    return template(now=datetime.datetime.now().strftime('%H:%M:%S'),flask=flask,y=y)


if __name__ == '__main__':
    app.run('0.0.0.0', use_reloader=True, port=5001)

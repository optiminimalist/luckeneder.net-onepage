# -*- coding: utf-8 -*-


from bottle import Bottle, debug, static_file
from Cheetah.Template import Template

import os
import website
def group_in_threes(arg):
    if len(arg) <= 3:
        return [arg]
    retval = [arg[:3]]

    return retval+group_in_threes(arg[3:])


app = Bottle()

@app.route('/static/<filename:path>')
def serve_asset(filename):
    """serves static assets"""
    if ".css" in filename:
        os.system("lessc ./static/css/style.less > ./static/css/style.css")
    return static_file(filename, root='./static')


@app.route('/')
def index():
    """the index page"""
    tmpl = Template(file="./views/new.tpl",
        searchList=[dict(skillgroups=group_in_threes(website.skills),
        projects=website.projects)])
    return str(tmpl)


if __name__ == "__main__":
    debug(True)
    app.run(host="0.0.0.0",
            port=os.environ.get('PORT', 5000),
            reloader=True)




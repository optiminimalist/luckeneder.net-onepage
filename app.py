# -*- coding: utf-8 -*-


from bottle import Bottle, debug, static_file, response, request
from bottle import cheetah_template
from Cheetah.Template import Template

import sys
from glob import glob
import os
import time
import config
import website
import shutil

def group_in_threes(arg):
    if len(arg) <= 3:
        return [arg]
    retval = [arg[:3]]
    # retval.extend(group_in_threes(arg[3:]))

    return retval+group_in_threes(arg[3:])

# def template_layout(template, *args, **kwargs):

#     layout_yield = cheetah_template(template, args, kwargs)
#     kwargs_more = dict(kwargs.items() + {"layout_yield": layout_yield}.items())

#     if not "pagetitle" in kwargs_more:
#         kwargs_more["pagetitle"] = None

#     templ = cheetah_template("layout", *args, **kwargs_more)

#     return templ

app = Bottle()

@app.route('/static/<filename:path>')
def serve_asset(filename):
    """serves static assets"""
    return static_file(filename, root='./static')


@app.route('/')
def index():
    """the index page"""
    tmpl = Template(file="./views/new.tpl", searchList=[dict(skillgroups=group_in_threes(website.skills),projects=website.projects)])
    return str(tmpl)


if __name__ == "__main__":
    if len(sys.argv) == 1:
        debug(True)
        app.run(host="0.0.0.0",
                port=os.environ.get('PORT', 5000),
                reloader=True)
    elif sys.argv[1] == "generate":
        templates = {"new": "index.html"}
        files = ["static/css/bootstrap.css",
                 "static/css/style.less",
                 "./static/js/html5shiv.js",
                 "./static/js/less.js",
                 "./static/js/bootstrap.min.js",
                 "./static/js/jquery.smoothscroll.js",
                 "./static/js/application.js",
                 "./static/css/elements.less",
                 "./static/img/document_logo.png",
                 "./static/img/yelp_logo.png",
                 "./static/img/standrews_logo.png"]
        outdir = "output"
        if not os.path.exists(outdir):
            os.mkdir(outdir)

        for file in files:
            outpath = os.path.join(outdir, file)
            d, f = os.path.dirname(outpath), os.path.basename(outpath)
            try:
                os.makedirs(d)
            except OSError:
                pass
            shutil.copyfile(file, outpath)

        for template, outfile in templates.items():
            with open("%s/%s" % (outdir, outfile), 'w') as f:
                tmpl = Template(file="./views/new.tpl", searchList=[dict(skillgroups=group_in_threes(website.skills),projects=website.projects)])

                f.write(str(tmpl))



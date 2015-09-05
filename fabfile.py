from fabric.api import *
from Cheetah.Template import Template
import os
import shutil
import website


def group_in_threes(arg):
    if len(arg) <= 3:
        return [arg]
    retval = [arg[:3]]

    return retval+group_in_threes(arg[3:])


env.hosts = ['luckeneder.net:2280']
env.user = "michael"


def compile_project():
    templates = {"new": "index.html"}
    files = ["static/css/bootstrap.min.css",
             "static/css/style.css",
             "./static/js/html5shiv.js",
             "./static/js/bootstrap.min.js",
             "./static/js/jquery.smoothscroll.js",
             "./static/js/application.js",
             "./static/css/elements.less",
             "./static/img/document_logo.png",
             "./static/img/yelp_logo.png",
              "./static/img/uva_logo.png",
             "./static/img/bb.png",
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
            tmpl = Template(file="./views/%s.tpl" % (template), searchList=[dict(skillgroups=group_in_threes(website.skills),projects=website.projects)])

            f.write(str(tmpl))

def deploy():
    """Updates the remote project
    """
    compile_project()
    with cd('/www/new.luckeneder.net'):
        run('rm -rf /www/new.luckeneder.net/*')
        put("output/*", ".")

def m():
    """Sets maintenance mode"""
    with cd('/www/new.luckeneder.net'):
        run("touch maintenance.html")

def l():
    """Sets live mode"""
    with cd('/www/new.luckeneder.net'):
        run("rm maintenance.html")

# def deploy():
#     """Updates the remote project
#     """
#     with cd('/www/optiminimalist'):
#         sudo('rm -rf cache_files/*')
#         sudo('mkdir -p cache_files')
#         sudo('chown -R www-data cache_files')
#         sudo('git pull')
#         with prefix('source /www/optiminimalist/venv/bin/activate'):
#             run('pip install -r requirements.txt')
#     reload_nginx()


# def reload_nginx():
#     """reloads nginx
#     """
#     sudo("supervisorctl restart optiminimalist")
#     sudo("service nginx reload")

"""Sample, showing how to correctly define the project root when not using the default settings.py file"""

from os.path import join, abspath, dirname

here = lambda *dirs: join(abspath(dirname(__file__)), *dirs)
BASE_DIR = here('..', '..')
root = lambda *dirs: join(abspath(BASE_DIR), *dirs)

# Usage Sample
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        # 'NAME': os.path.join(BASE_DIR, 'db.sqlite3')
        'NAME': root('db.sqlite3')
    }
}

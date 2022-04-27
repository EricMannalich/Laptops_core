import multiprocessing

name = 'core'
bind = ":8443"
backlog = 2048
workers = multiprocessing.cpu_count() * 2 + 1
loglevel = 'info'
errorlog = 'errorlog'
accesslog = 'accesslog'
access_log_format = '%(h)s %(l)s %(u)s %(t)s "%(r)s" %(s)s %(b)s "%(f)s" "%(a)s"'
#certfile = '/etc/ssl/certs/selfsigned.crt'
#keyfile = '/etc/ssl/private/selfsigned.key'
#ssl_version = 'TLSv1 TLSv1.1 TLSv1.2'
"""raw_env = [
    'SECRET_KEY = xuT<llqg<k4xUGHd',
    'ALLOWED_HOSTS = "*"',
    'CSRF_TRUSTED_ORIGINS = "https://127.0.0.1"',
    'DEBUG = 0',
    'CSRF_COOKIE_SECURE = 1',
    'SESSION_COOKIE_SECURE = 1',
    'SECURE_HSTS_SECONDS = 31536000',
    'SECURE_SSL_REDIRECT = 1',
    'CORS_ORIGIN_ALLOW_ALL = 0',
]"""
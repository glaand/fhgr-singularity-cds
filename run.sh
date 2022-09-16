singularity -s exec --bind ./code:/code .container bash -c "cd /code && $1"

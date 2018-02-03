BASEDIR=$(dirname "$0")
docker build --rm -t jesser/varnish $BASEDIR

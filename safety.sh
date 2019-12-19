#! /bin/sh

if [ $# -eq 0 ]; then
    cmd="check-file"
else
    cmd=$1
fi

cd /target

case $cmd in
    check-stdin)
        ARGS="--stdin"
        ;;
    check-file)
        shift
        if [ $# -eq 1 ]; then
            ARGS="-r $1"
        elif [ -r requirements.txt ]; then
            ARGS="-r requirements.txt"
        else
            echo "Missing requirements file" 1>&2;
            exit 2
        fi
        ;;
    *)
        echo "Unknown command $cmd" 1>&2
        exit 2
esac

echo safety check ${ARGS} --full-report
safety check ${ARGS} --full-report  > /results/safety.txt

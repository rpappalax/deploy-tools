source config.sh

echo "----------------------------"
echo "URL CHECKS ($TEST_ENV)"
echo "----------------------------"
echo
while :; do
    CMD="curl -s 'https://$HOST_UPDATES/health' | python -mjson.tool"
    echo $CMD
    eval $CMD

    echo
    echo


    CMD="curl -s 'https://$HOST_UPDATES/status' | python -mjson.tool"
    echo $CMD
    eval $CMD
    echo

    sleep 5
    clear
done



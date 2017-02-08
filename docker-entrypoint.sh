#/bin/bash
echo "Starting service..."
while true
do
        pkill -f main
        ./main "$@" &
        inotifywait --exclude .swp -e create -e modify -e delete -e move /opt/service/
        echo "Change detected. Reloading..."
done

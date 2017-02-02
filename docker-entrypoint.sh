#/bin/bash
echo "Starting service..."
while true
do
        ./main "$@"
        inotifywait --exclude .swp -e create -e modify -e delete -e move /pipeline/output/
done

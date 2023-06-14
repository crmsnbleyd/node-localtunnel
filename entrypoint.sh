while getopts l:s: flag
do
    case "${flag}" in
        l) localhost=${OPTARG};;
        s) subdomain=${OPTARG};;
    esac
done

lt -l $localhost -p 80 -s "${subdomain}" 

# This script rename your file to the proper format
# Can also use it to deploy it to an external cloud storage and send it to your mailing list or whatever
# See: https://docs.travis-ci.com/user/environment-variables/
set -ex

main() {
    # TODO: Change the FINAL_PDF_NAME
    local src=$(pwd) \
        FINAL_PDF_NAME=Rudo2204_thesis_$(date -u +"%Y-%m-%d")
    cd $src
    mv main.pdf $FINAL_PDF_NAME.pdf
}

main

# This script rename your file to the proper format and archive your project files
# Can also use it to deploy it to an external cloud storage and send it to your mailing list or whatever
# See: https://docs.travis-ci.com/user/environment-variables/
set -ex

main() {
    # TODO: Change the PDF_NAME and ARCHIVE_NAME to match your writing guidelines
    local PDF_NAME=Rudo2204_thesis_$(date -u +"%Y-%m-%d") \
        ARCHIVE_NAME=Rudo2204_material_$(date -u +"%Y-%m-%d")

    mv main.pdf $PDF_NAME.pdf
    # TODO: Change filename of files here to archive them correctly
    7z a $ARCHIVE_NAME.7z code content/ frontmatter/ images/ main.tex uni.bib $PDF_NAME.pdf
}

main

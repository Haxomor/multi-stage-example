
def updateFileContent(String example.txt) {
    // Bash function to update file content by incrementing it by 1
    sh """
    content=\$(cat ${example.txt})
    updatedContent=\$((content + 1))
    echo \${updatedContent} > ${example.txt}
    """
}

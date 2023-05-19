
def updateFileContent(String fileName) {
    // Bash function to update file content by incrementing it by 1
    sh """
    content=\$(cat ${fileName})
    updatedContent=\$((content + 1))
    echo \${updatedContent} > ${fileName}
    """
}

def getFileContent(filePath)
	fileHandle = File.open(filePath, "rb")
	file = fileHandle.read
	fileHandle.close
	return file
end

codeContent = getFileContent("problems/p01/p1.rb")
markdownContent = getFileContent("problems/p01/p1.md")

# Get the title from the first line ex: Problem 9
title =  markdownContent.lines.first.scan(/\w+\s*\d+/).first
formatedTitle = title.downcase.gsub(/\s+/, "")

# Add useless date in file name to respect jekyll post format
file = File.open("_posts/1111-11-11-" + formatedTitle + ".md", 'w')

# YAML Header
file.write("---\n")
file.write("layout: post\n")
file.write("title: " + title + "\n")
file.write("permalink: " + formatedTitle + "\n")
file.write("---\n")
file.write(markdownContent + "\n")

file.write("{% highlight ruby %}\n")
file.write(codeContent.gsub(/^$\n/, ''))
file.write("{% endhighlight %}\n")

file.close

dir = '/home/alex/projecteuler/'
puts Dir.entries(dir).select {
   	|file2| File.directory? File.join(dir, file2)
}


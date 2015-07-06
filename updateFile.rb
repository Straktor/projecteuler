def getFileContent(filePath)
	fileHandle = File.open(filePath, "rb")
	file = fileHandle.read
	fileHandle.close
	return file
end

def createPost(mdFile, codeFile)
	markdownContent = getFileContent(mdFile)
	codeContent = getFileContent(codeFile)
	
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
	
	# Markdown
	file.write(markdownContent + "\n")
	
	# Code
	file.write("{% highlight ruby %}\n")
	file.write(codeContent.gsub(/^$\n/, ''))
	file.write("{% endhighlight %}\n")

	file.close
end

# createPost("problems/p01/p1.md" , "problems/p01/p1.rb")

dir = 'problems/'

subDirectoryList = Dir.entries(dir).select {
	|entry| File.directory? File.join(dir,entry) and !(entry =='.' || entry == '..')
}

p subDirectoryList

subDirectoryList.each do |currentSubDir|
	
	fullMDfilePath = ""
	fullCodeFilePath = ""

	files = Dir.entries(dir + currentSubDir).select {|f| !File.directory? f}
	p files
	
	files.each do |currentFile|
	
		if currentFile =~ /md$/
			fullMDfilePath = dir + currentSubDir + "/" + currentFile	
		end

		if currentFile =~ /rb$/
			fullCodeFilePath = dir + currentSubDir + "/" + currentFile			
		end

	end

	if !fullMDfilePath.empty? and !fullCodeFilePath.empty?
		createPost(fullMDfilePath, fullCodeFilePath)	
	end

end

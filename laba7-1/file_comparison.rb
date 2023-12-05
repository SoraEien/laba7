class FileComparison
  def self.compare(file1, file2)
    content1 = File.read(file1)
    content2 = File.read(file2)

    if content1 == content2
      return -1
    else
      return find_first_difference(content1, content2)
    end
  end

  def self.find_first_difference(content1, content2)
    min_length = [content1.length, content2.length].min

    (0...min_length).each do |i|
      if content1[i] != content2[i]
        return i + 1
      end
    end

    min_length + 1
  end
end
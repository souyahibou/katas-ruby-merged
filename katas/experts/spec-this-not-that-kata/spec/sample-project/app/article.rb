class Article

  class << self

    def create(title, content)
      File.write("data/#{title}", content)
    end

    def find(title)
      File.read("data/#{title}")
    end

    def list
      Dir["data/*"].map do |filetitle|
        filetitle.gsub("data/", '')
      end
    end

  end
end


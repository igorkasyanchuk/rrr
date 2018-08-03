 require "rrr"
 require "rake"
 require "date"
 require "time"
 require "pry"

 module Rrr
  class Run
    attr_reader :datetime, :files

    def initialize(files)
      @files = files
      init && touch && run
    end

    def init
      @datetime = begin
        Time.parse(File.open('.rrr', 'r').read)
      rescue
        Time.now
      end
    end

    def touch
      File.open('.rrr', 'w') do |file|
        file.write(Time.now)
      end
    end

    def list
      file_list = FileList.new('spec/**/*_spec.rb')
      file_list.select{|file| File.ctime(file) > datetime}
    end

    def run
      if collection.empty?
        puts "INFO: no changes in specs ... running all specs\nINFO: #{rspec}"
        command = rspec
      else
        command = "#{rspec} #{collection.join(' ')}"
        puts "rrr: #{command}"
      end
      system(command)
    end

    def collection
      @collection ||= begin
        files.empty? ? list : files
      end
    end

    def rspec
      "rspec"
    end
  end
end
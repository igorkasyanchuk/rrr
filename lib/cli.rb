 require "rrr"
 require "rake"
 require "date"
 require "time"

 module Rrr
  class Run
    attr_reader :datetime

    def initialize
      init
      touch
      run
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
      files     = []
      file_list.each do |file|
        files << file if File.ctime(file) > datetime
      end
      files
    end

    def run
      files = list
      if files.empty?
        puts "rrr: no changes ins specs ... running all specs"
        command = "rspec"
      else
        command = "rspec #{files.join(' ')}"
      end
      puts(command)
      system(command)
    end
  end
end
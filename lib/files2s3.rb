$:.unshift(File.dirname(__FILE__)) unless
  $:.include?(File.dirname(__FILE__)) || $:.include?(File.expand_path(File.dirname(__FILE__)))

require 'rubygems'
require 'right_aws'

class Files2s3
  VERSION = '0.0.1'
  
  class << self
    def start!(path, bucket)
      @@s3 = RightAws::S3.new(ENV['AWS_ACCESS_KEY'], ENV['AWS_SECRET_ACCESS_KEY'])
      @@bucket = @@s3.bucket(bucket, true, 'public-read')
      files(path)
    end
    
    def files(path)
      Dir.new(path).select{|v| v != '.' && v != '..'}.each do |file|
        current_path = File.join(path, file)
        if File.directory?(current_path)
          files(current_path)
        else
          transfer_file(current_path)
        end
      end
    end
    def transfer_file(filepath)
      key = self.key_name(filepath)
      puts "Upload #{filepath} as #{key}"
      @@bucket.put(key, File.new(filepath), {}, 'public-read')
      puts 'Completed'
    end
    
    def key_name(path)
      path.gsub(/^\.\//, '')
    end
    
  end
end
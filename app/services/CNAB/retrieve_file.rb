module CNAB
  class RetrieveFile
    def initialize(file_key)
      @file_key = file_key
      @bucket = Aws::S3::Resource.new.bucket('bucket')
    end

    def call
      @bucket.object(@file_key).get.body
    end
  end
end
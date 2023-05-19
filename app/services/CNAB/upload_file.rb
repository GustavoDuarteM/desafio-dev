# frozen_string_literal: true

module CNAB
  class UploadFile
    def initialize(file)
      @file = file
      @bucket = Aws::S3::Resource.new.bucket('bucket')
    end

    def call
      @bucket.object(file_name).put(body: @file.read)
    end

    private

    def file_name
      @file&.path
    end
  end
end

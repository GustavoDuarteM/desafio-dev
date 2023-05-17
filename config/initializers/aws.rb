Aws.config.update({
  region: 'sa-east-1',
  credentials: Aws::Credentials.new('fakeAccessKeyId', 'fakeSecretAccessKey'),
  endpoint: 'http://127.0.0.1:4566'
})

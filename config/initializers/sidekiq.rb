sidekiq_redis = {
  url: 'redis://127.0.0.1:6379',
  namespace: 'sidekiq'
}

Sidekiq.configure_server do |config|
  config.redis = sidekiq_redis
end

Sidekiq.configure_client do |config|
  config.redis = sidekiq_redis.merge(size: 1)
end

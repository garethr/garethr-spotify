class spotify {
  apt::source { 'spotify':
    location          => 'http://repository.spotify.com',
    release           => 'stable',
    repos             => 'non-free',
    key               => {
      id              => '94558F59',
    },
    include           => {
      src             => false,
    },
  }

  package { 'spotify-client':
    ensure  => latest,
    require => Apt::Source['spotify'],
  }
}

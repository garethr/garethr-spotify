class spotify {
  apt::source { 'spotify':
    location          => 'http://repository.spotify.com',
    release           => 'stable',
    repos             => 'non-free',
    key               => {
      id              => 'D2C19886',
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

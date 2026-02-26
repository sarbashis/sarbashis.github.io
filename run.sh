docker run -p 4000:4000 \
    -v /Users/edsxsrb/Documents/sarbashis.github.io:/srv/jekyll \
    -w /srv/jekyll \
    ruby:3.3.4 /bin/bash -c "
    gem install bundler && \
    bundle install && \
    bundle exec jekyll serve --draft --trace --host 0.0.0.0 --port 4000 --no-watch
    "

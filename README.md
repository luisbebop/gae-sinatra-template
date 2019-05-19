Google App Engine Sinatra Template
=========

👽👁🤖

## Description
Template application for Google App Engine using Sinatra, Stackdriver and minitest. Use it as a guideline to future projects in ruby that needs to be deployed on GAE

## Development

Sometimes you need to access Google Cloud services from your local dev environment. To do that you need to create an service account and pass it on the varible `GOOGLE_APPLICATION_CRDENTIALS`

```shell
GOOGLE_APPLICATION_CREDENTIALS=service-account.json ruby app.rb
bundle install # first time
bundle exec ruby app.rb
```

Test

```shell
ruby test/foo_test.rb
```

Deploy

```shell
gcloud app deploy
```

Curl it

```
curl -X GET "https://gae-sinatra-template-dot-infinitepay-stg.appspot.com"
```

## License

```
MIT license
```
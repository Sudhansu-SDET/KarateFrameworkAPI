function fn() {
  var env = karate.env; // get system property 'karate.env'
  var os = karate.os;
  karate.log('karate.env system property was:', env);
  karate.log("Your OS Is",os);

  if (!env) {
    env = 'dev';

  }
  var config = {
    env: env,
    baseUrl: 'https://gorest.co.in',
    tokenID : 'b99104b8042cf7a3b564e28767e46d53d68b7b150506a96720fce0e3261e42b3',
    os : os
  }
  if (env == 'dev') {
    config.baseUrl = 'https://gorest.co.in'
  } else if (env == 'e2e') {
    config.baseUrl = 'https://gorest.co.in';
  }
  return config;
}
function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }

  var seed = karate.callSingle('classpath:features/generate-email.js');

  var config = {
    env: env,
    baseUrl: 'https://automationexercise.com/api',
    userEmail: seed.email,
    userPassword: 'Password123',
    userName: 'TestUser'
  };

  return config;
}
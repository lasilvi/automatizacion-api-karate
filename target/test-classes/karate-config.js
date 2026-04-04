function fn() {
  var env = karate.env;
  karate.log('karate.env system property was:', env);
  if (!env) {
    env = 'dev';
  }

  var timestamp = java.lang.System.currentTimeMillis();
  var dynamicEmail = 'testuser_' + timestamp + '@mail.com';

  var config = {
    env: env,
    baseUrl: 'https://automationexercise.com/api',
    userEmail: dynamicEmail,
    userPassword: 'Password123!',
    userName: 'TestUser',
    userFirstName: 'Test',
    userLastName: 'User',
    userTitle: 'Mr',
    userBirthDay: '15',
    userBirthMonth: '6',
    userBirthYear: '1990',
    userCompany: 'TestCompany',
    userAddress1: '123 Test Street',
    userAddress2: 'Apt 4B',
    userCountry: 'United States',
    userState: 'California',
    userCity: 'Los Angeles',
    userZipcode: '90001',
    userMobileNumber: '1234567890'
  };

  return config;
}
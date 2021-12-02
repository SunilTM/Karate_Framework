function fn() {
    var config = {

        url : 'https://reqres.in/api/users?page=2'
    }
    var env = karate.env; // get system property 'karate.env'
    karate.log("Environment varible is : -" ,env)
    // if (!env) {
    //     env = 'dev';
    // }
    // var config = {
    //     env: env,
    //     testConfig: 'bar'
    // }
    if (env == 'qa') {
        config.url('https://reqres.in/api/users?page=2')
    } else if (env == 'e2e') {
       config.url('https://dev.in/api/users?page=2')
    }
    // config.myObject = read('classpath:test.json');
    // config.myFunction = read('classpath:test.js');
    // config.myUtils = karate.call('classpath:utils.feature');
    // config.myCommon = read('classpath:common.feature');
    // return config;

}
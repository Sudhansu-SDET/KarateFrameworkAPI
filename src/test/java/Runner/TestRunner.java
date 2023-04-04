package Runner;


import com.intuit.karate.junit5.Karate;

class TestRunner {

    @Karate.Test
    public Karate runTest() {
        return (Karate) Karate.run("classpath:features/sample.feature").scenarioName("Hello World scenario");
    }
}

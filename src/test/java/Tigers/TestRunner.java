package Tigers;
import com.intuit.karate.junit5.Karate;
public class TestRunner {
	@Karate.Test
	// lets make some changes 
  public  Karate  runTest() {
        return Karate.run("classpath:features")
                .tags("@smoke");
              
	}

}


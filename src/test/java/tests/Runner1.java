package tests;

import static org.junit.Assert.assertTrue;

import org.junit.Test;

//import org.junit.runner.RunWith;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
//@RunWith(Karate.class)
public class Runner1 {

	  @Test
	    public void Runner1() {
	        Results results = Runner.path("classpath:tests").tags("~@ignore").parallel(5);
	        assertTrue(results.getErrorMessages(), results.getFailCount() == 0);
	    }
	
	
}



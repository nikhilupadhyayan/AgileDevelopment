package 
{
	/**
	 * ...
	 * @author Nikhil
	 */
	import asunit.framework.TestSuite;
	public class AllTests extends TestSuite
	{
		
		public function AllTests() 
		{
			      super();
				  //addTest(new FirstTest("TestFirst"));
				  addTest(new TestBoard("TestEndOfGame"));
				  addTest(new TestBoard("TestStartGame"));

		}
		
	}

}
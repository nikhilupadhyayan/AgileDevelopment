package  
{
	/**
	 * ...
	 * @author Nikhil
	 */
	import asunit.framework.TestCase;
	public class FirstTest extends TestCase
	{
		
		public function FirstTest(testMethod:String) 
		{
		super(testMethod);
		}
		public function TestFirst():void
		{
				var i:Number = 5;
				assertEqualsFloat(6, i, 0.001);
		}
	}

}
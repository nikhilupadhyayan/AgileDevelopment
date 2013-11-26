package  
{
	/**
	 * ...
	 * @author Nikhil
	 */
		import asunit.framework.TestCase;

	public class TestBoard extends TestCase
	{
		
		public function TestBoard(testMethod:String) 
		{
			super(testMethod);
		}
		public function TestEndOfGame()
		{
			var count :int = 9;
		
				assertTrue(count == 9);
		}
		public function TestStartGame()
		{
				var count:int = 0;
				assertTrue(count == 0);
		}
		public function Player1Wins()
		{
				
		}
	}

}
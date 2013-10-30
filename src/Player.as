package  
{
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Player 
	{
		
		public function Player() 
		{
			trace("player created");
		}
		public function play(i:int):void
		{
				trace("player"+i+ "playing");
				if (i == 1)
				trace("drawing X" );
				else
				trace("Drawing O");
		}
	
	}

}
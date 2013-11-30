package  
{
	import flash.display.Bitmap;
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Player 
	{
		
		public function Player() 
		{
			round = new RoundClass();
			cross = new CrossClass();
			trace("player created");
		}
		public function play(i:int):void
		{
				trace("player"+i+ "playing");
				if (i == 1)
				{
					
				trace("drawing X" );
				}
				else
				trace("Drawing O");
		}
	
	}

}
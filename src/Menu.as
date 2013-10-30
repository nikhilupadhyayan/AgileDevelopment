package  
{
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Menu 
	{
		
		public function Menu() 
		{
			trace("menu created");
			getClick();
		}
		public function getClick():void
		{
				trace("New game clicked");
				var newgame:NewGame = new NewGame();
		}
		
	}

}
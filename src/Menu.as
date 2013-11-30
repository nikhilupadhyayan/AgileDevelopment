package  
{
	import flash.display.Sprite;
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Menu extends Sprite
	{
		public function Menu() 
		{
			trace("menu created");
			//getClick();
			 //var newgame:NewGame = new NewGame();
			var board:Board = new Board();
			addChild(board);
			
		}
		public function getClick():void
		{
				trace("New game clicked");
		}
		
	}

}
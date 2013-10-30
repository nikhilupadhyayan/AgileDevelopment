package  
{
	/**
	 * ...
	 * @author Nikhil
	 */
	public class NewGame 
	{
		private var board:Board;
		
		public function NewGame() 
		{
			trace("new game created");
			board = new Board();
			
			board.draw();
			board.startGame();
			
		}
		
	}

}
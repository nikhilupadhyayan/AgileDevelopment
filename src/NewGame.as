package  
{
	/**
	 * ...
	 * @author Nikhil
	 */
	public class NewGame 
	{
		//private var board:Board;
		
		public function NewGame() 
		{
			trace("new game created");
			var board:Board = new Board();
			
			board.draw();
			board.startGame();
			
		}
		
	}

}
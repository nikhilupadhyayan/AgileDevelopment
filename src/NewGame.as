package  
{
	/**
	 * ...
	 * @author Nikhil
	 */
	public class NewGame 
	{
		private var board:Board;
		private var player1:Player1;
		private var player2:Player2;
		public function NewGame() 
		{
			board = new Board();
			player1 = new Player1();
			player2 = new Player2();
			board.draw();
			player1.init();
			player2.init();
			
		}
		
	}

}
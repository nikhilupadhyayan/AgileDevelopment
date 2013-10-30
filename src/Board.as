package  
{
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Board 
	{
		private var player1:Player;
		private var player2:Player;
		public function Board() 
		{
			
			trace("creating board");
			player1 = new Player();
			player2 = new Player();
		}
		public function draw():void
		{
		trace("drawing cells");
		}
		public function checkForResult():Boolean
		{
				
				trace("checking for result");
				var val:int = foundWinner();
				if (val != -1)
				{
				if (val==1)
					trace("player 1 wins");
				else if (val == 2)
					trace("Player 2 wins");
				else if (val == 0)
					trace("Match drawn");
				return true;
				}
				else
				return false;
				
					
		}
		public function foundWinner():int
		{
				
				return 1;//if player 1 wins
				//return 2; //if Player 2 wins
				//return 0;//if draw
				//return -1;//if none of the above
		}
		public function startGame():void
		{
				while (!checkForResult())
				{
				trace("player1's turn:");
				player1.play(1);
				trace("Player2's turn:");
				player2.play(2);
				}
			
		}
	}

}
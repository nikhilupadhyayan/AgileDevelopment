package  
{
	import flash.display.Bitmap;
		import flash.display.Sprite;

	/**
	 * ...
	 * @author Nikhil
	 */
	public class Board extends Sprite
	{
		private var player1:Player;
		private var player2:Player;
		private var matrix:Array;
		private var count:int;
		[Embed(source = "../board.png")]
		private var BoardClass:Class;
		private var boardd:Bitmap;
		public function Board() 
		{
			
		boardd = new BoardClass();
			player1 = new Player();
			player2 = new Player();
			draw();
			//startGame();
		}
		public function draw():void
		{
			matrix =[[0,0,0],[0,0,0],[0,0,0]];
			count = 0;
			
		//			stage.addChild(boardd);
		addChild(boardd);
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
				
			
				for (var i:int = 0; i < 3;++i )//checking rows 
				{
						
						if (matrix[i, 0] == 1 && matrix[i, 1] == 1 && matrix[i, 2] == 1)
							return 1;
						else if (matrix[i, 0] == 2 && matrix[i, 1] == 2 && matrix[i, 2] == 2)
						return 2;
				}
				for ( i = 0; i < 3;++i )//checking columns
				{
					if (matrix[0, i] == 1 && matrix[1, 0] == 1 && matrix[2, 0] == 1)
							return 1;
					else if (matrix[0, i] == 2 && matrix[1, i] == 2 && matrix[2, i] == 2)
						return 2;
				}
				if (matrix[0, 0] == 1 && matrix[1, 1] == 1 && matrix[2, 2] == 1)
					return 1;
				else if (matrix[0, 0] == 2 && matrix[1, 1] == 2 && matrix[2, 2] == 2)
					return 2;
				
				if (count == 9)
					return 0;//if draw
				else
					return -1;//if none of the above i.e continue playing
					
					//if player 1 wins
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

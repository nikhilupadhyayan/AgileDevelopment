package
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.MouseEvent;
	import flash.net.drm.DRMPlaybackTimeWindow;
	
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Board extends Sprite
	{
		//private var player1:Player;
		//private var player2:Player;
		private var winner:int;
		private var matrix:Array;
		private var count:int; //count moves
		[Embed(source="../board.png")]
		private var BoardClass:Class;
		private var board:Bitmap = new BoardClass(); //board image
		private var player:int = 1;
		private var tempimg:Sprite; //to alt between X and O
		
		[Embed(source="../cross.png")]
		private var CrossClass:Class;
		
		[Embed(source="../round.png")]
		private var RoundClass:Class;
		
		private var round:Bitmap;
		private var cross:Bitmap;
		
		[Embed(source = "../gameoverbg.png")]
		private var gameoverBgClass:Class;
		private var gameoverBg:Bitmap = new gameoverBgClass();
		
		[Embed(source = "../1wins.png")]
		private var onewinsClass:Class;
		private var onewins:Bitmap = new onewinsClass();
		
		[Embed(source = "../2wins.png")]
		private var twowinsClass:Class;
		private var twowins:Bitmap = new twowinsClass();
		
		[Embed(source = "../draw.png")]
		private var tieClass:Class;
		private var tie:Bitmap = new tieClass();
		public function Board()
		{
			
			draw();
			addEventListener(MouseEvent.CLICK, play);
		
			//player1 = new Player();
			//player2 = new Player();
		
			//startGame();
		}
		
		public function draw():void
		{
			matrix = [[0, 0, 0], [0, 0, 0], [0, 0, 0]];
			count = 0;
			
			addChild(board);
			trace("drawing cells");
		
		}
		
		private function play(e:MouseEvent):void
		{
			
			
				var row:int = e.localY / 100;
				var col:int = e.localX / 100;
				trace(row + "," + col);
				tempimg = new Sprite();
				round = new RoundClass();
				cross = new CrossClass();
				if (player == 1)
				{
					tempimg.addChild(round);
					player = 2;
					matrix[row][col] = 1;
					count++;
				}
				else if (player == 2)
				{
					tempimg.addChild(cross);
					player = 1;
					matrix[row][col] = 2;
					count++;
				}
				tempimg.x = col * 100 + 5;
				tempimg.y = row * 100 + 5;
				addChild(tempimg);
			
			if(getResult())
			{
				var i:int = 0;
				//while (i < 10000000)
				//	++i;
				//parent.removeChildAt(0);
				tempimg = new Sprite();
				if (winner == 1)
					tempimg.addChild(onewins);
				else if (winner == 2)
					tempimg.addChild(twowins);
				else
					tempimg.addChild(tie);
				//tempimg.addChild(gameoverBg);
				tempimg.alpha = 0.8;
				parent.addChild(tempimg);
				
			}
		}
		
		public function getResult():Boolean
		{
			
			trace("checking for result");
			winner = findWinner();
			if (winner != -1)
			{
				if (winner == 1)
					trace("player 1 wins");
				else if (winner == 2)
					trace("Player 2 wins");
				else if (winner == 0)
					trace("Match drawn");
				return true;
			}
			else
				return false;
		
		}
		
		public function findWinner():int
		{
			
			for (var i:int = 0; i < 3; ++i) //checking rows 
			{
				
				if (matrix[i][0] == 1 && matrix[i][1] == 1 && matrix[i][2] == 1)
					return 1;
				else if (matrix[i][0] == 2 && matrix[i][1] == 2 && matrix[i][2] == 2)
					return 2;
			}
			for (i = 0; i < 3; ++i) //checking columns
			{
				if (matrix[0][i] == 1 && matrix[1][0] == 1 && matrix[2][0] == 1)
					return 1;
				else if (matrix[0][i] == 2 && matrix[1][i] == 2 && matrix[2][i] == 2)
					return 2;
			}
			if (matrix[0][0] == 1 && matrix[1][1] == 1 && matrix[2][2] == 1)
				return 1;
			else if (matrix[0][0] == 2 && matrix[1][1] == 2 && matrix[2][2] == 2)
				return 2;
			
			if (matrix[2][0] == 1 && matrix[1][1] == 1 && matrix[0][2] == 1)
				return 1;
			else if (matrix[2][0] == 2 && matrix[1][1] == 2 && matrix[0][2] == 2)
				return 2;
			if (count == 9)
				return 0; //if draw
			else
				return -1; //if none of the above i.e continue playing
		
			//if player 1 wins
			//return 2; //if Player 2 wins
			//return 0;//if draw
			//return -1;//if none of the above
		
		}
		
		public function startGame():void
		{
			//while (!checkForResult())
			
		
		}
	
	}

}

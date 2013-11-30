package  
{
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.display.SimpleButton;
	import flash.events.MouseEvent;
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Menu extends Sprite
	{
		[Embed(source = "../mainBg.png")]
		private var mainBgClass:Class;
		private var mainBg:Bitmap = new mainBgClass();
		
		[Embed(source = "../aboutPage.png")]
		private var aboutPgClass:Class;
		private var aboutPage:Bitmap = new aboutPgClass();
		
		private var play:Button ;
		private var about:Button;
		private var back:Button;
		//private var button:Button
		
		
		public function Menu() 
		{
			trace("menu created");
			
			play = new Button("play");
			about = new Button("about");
			back = new Button("back");
			play.width = 130;
			play.height = 40;
			play.x = 80;
			play.y = 200;
			about.x = play.x;
			about.width = play.width;
			about.y = play.y + play.height + 20;
			about.height = play.height;


			//button.name = "PLAY";
			//getClick();
			 //var newgame:NewGame = new NewGame();
			 addChild(mainBg);
			 addChild(play);
			 addChild(about);
			 play.addEventListener(MouseEvent.CLICK, play_click);
			about.addEventListener(MouseEvent.CLICK, about_click);
			
		}
		
		private function about_click(e:MouseEvent):void 
		{
			addChild(aboutPage);
			back.x = 70;
			back.y = 250;
			back.width = 130;
			back.height=40;
			addChild(back);
			back.addEventListener(MouseEvent.CLICK, back_click);
			
		}
		
		private function back_click(e:MouseEvent):void 
		{
			removeChild(aboutPage);
			removeChild(back);
		}
		
		private function play_click(e:MouseEvent):void 
		{
					var board:Board = new Board();
			addChild(board);
		}
		public function getClick():void
		{
				trace("New game clicked");
		}
		
	}

}
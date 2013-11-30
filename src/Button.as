package
{
	import flash.display.Bitmap;
	import flash.display.SimpleButton;
	
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Button extends SimpleButton
	{
		
		[Embed(source="../playOverbtn.png")]
		private var playOverClass:Class;
		private var playOverbtn:Bitmap = new playOverClass();
		
		[Embed(source="../playbtn.png")]
		private var playbtnClass:Class;
		private var playbtn:Bitmap = new playbtnClass();
		
		[Embed(source="../playClickbtn.png")]
		private var playclickClass:Class;
		private var playclick:Bitmap = new playclickClass();
		
		[Embed(source="../aboutbtn.png")]
		private var aboutbtnClass:Class;
		private var aboutbtn:Bitmap = new aboutbtnClass();
		
		[Embed(source="../aboutclick.png")]
		private var aboutclickClass:Class;
		private var aboutclick:Bitmap = new aboutclickClass();
		
		[Embed(source="../aboutover.png")]
		private var aboutoverClass:Class;
		private var aboutover:Bitmap = new aboutoverClass();
		
		[Embed(source="../backbtn.png")]
		private var backbtnClass:Class;
		private var backbtn:Bitmap = new backbtnClass();
		
		[Embed(source="../backclickbtn.png")]
		private var backclickClass:Class;
		private var backclickbtn:Bitmap = new backclickClass();
		
		[Embed(source="../backoverbtn.png")]
		private var backoverbtnClass:Class;
		private var backoverbtn:Bitmap = new backoverbtnClass();
		
		[Embed(source = "../undobtn.png")]
		private var undobtnClass:Class;
		private var undobtn:Bitmap = new undobtnClass();
		
		[Embed(source = "../undoclickbtn.png")]
		private var undoclickClass:Class;
		private var undoclickbtn:Bitmap = new undoclickClass();
		
		[Embed(source = "../undooverbtn.png")]
		private var undooverClass:Class;
		private var undooverbtn:Bitmap = new undooverClass();
		
		[Embed(source = "../restart.png")]
		private var restartClass:Class;
		private var restartbtn:Bitmap = new restartClass();
		
		[Embed(source = "../restartclickbtn.png")]
		private var restartclickClass:Class;
		private var restartclickbtn:Bitmap = new restartclickClass();
		
		
		[Embed(source = "../restartoverbtn.png")]
		private var restartoverClass:Class;
		private var restartoverbtn:Bitmap = new restartoverClass();
		
		public function Button(name:String)
		{
			
			var defaultbtn:Bitmap;
			var overbtn:Bitmap;
			var clickbtn:Bitmap;
			if (name == "play")
			{
				defaultbtn = playbtn;
				overbtn = playOverbtn;
				clickbtn = playclick;
			}
			else if (name == "about")
			{
				defaultbtn = aboutbtn;
				overbtn = aboutover;
				clickbtn = aboutclick;
			}
			else if (name == "back")
			{
				defaultbtn = backbtn;
				overbtn = backoverbtn;
				clickbtn = backclickbtn;
			}
			else if (name == "undo")
			{
				defaultbtn = undobtn;
				overbtn = undooverbtn;
				clickbtn = undoclickbtn;
			}
			else if (name == "restart")
			{
				defaultbtn = restartbtn;
				overbtn = restartoverbtn;
				clickbtn = restartclickbtn;
			}
			
			super(defaultbtn, overbtn, clickbtn, clickbtn);
		
		}
	}
}


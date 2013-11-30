package 
{
	import asunit.textui.TestRunner;
	import flash.display.Bitmap;
	import flash.display.Sprite;
	import flash.events.Event;
	//import testsrc.AllTests;
	
	
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Main extends Sprite 
	{
		
		
		[Embed(source = "../board.png")]
		private var BoardClass:Class;
		var image:Bitmap;
		public function Main():void 
		{
			image = new BoardClass();
			/*
			var unittests:TestRunner = new TestRunner();
      stage.addChild(unittests);
      unittests.start(AllTests, null, TestRunner.SHOW_TRACE);
		*/
	  if (stage)
			{
				
				init();
			}
			else addEventListener(Event.ADDED_TO_STAGE, init);
			
			
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			// entry point
			trace("main");
			//addChild(image);
			 var menu:Menu = new Menu();
			stage.addChild(menu);
			
		}
		
	}
	
}
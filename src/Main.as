package 
{
	import asunit.textui.TestRunner;
	import flash.display.Sprite;
	import flash.events.Event;
	//import testsrc.AllTests;
	
	
	/**
	 * ...
	 * @author Nikhil
	 */
	public class Main extends Sprite 
	{
		
		
		
		public function Main():void 
		{
				
			var unittests:TestRunner = new TestRunner();
      stage.addChild(unittests);
      unittests.start(AllTests, null, TestRunner.SHOW_TRACE);
			if (stage)
			{
				
				init();
			}
			else addEventListener(Event.ADDED_TO_STAGE, init);
			
			//var menu:Menu = new Menu();
		}
		
		private function init(e:Event = null):void 
		{
			removeEventListener(Event.ADDED_TO_STAGE, init);
			
			// entry point
			
		}
		
	}
	
}
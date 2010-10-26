package org.osflash.signals.natives.base 
{
	import org.osflash.signals.natives.sets.InteractiveObjectSignalSet;
	import org.osflash.signals.natives.sets.NativeSignalSet;

	import flash.display.Sprite;

	public class SignalSprite extends Sprite implements ISignalSetOwner
	{
		private var _signals:NativeSignalSet;
		
		public function get nativeSignalSet():NativeSignalSet
		{
			return _signals ||= new InteractiveObjectSignalSet(this);
		}
				
		public function get signals():InteractiveObjectSignalSet 
		{ 
			return nativeSignalSet as InteractiveObjectSignalSet ;
		}
	}
}
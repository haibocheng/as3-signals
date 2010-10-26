package org.osflash.signals.natives.base 
{
	import org.osflash.signals.natives.sets.NativeSignalSet;

	import flash.display.MovieClip;

	import org.osflash.signals.natives.sets.InteractiveObjectSignalSet;

	public class SignalMovieClip extends MovieClip implements ISignalSetOwner
	{
		private var _signals:NativeSignalSet;

		public function get nativeSignalSet():NativeSignalSet
		{
			return _signals ||= new InteractiveObjectSignalSet(this);
		}

		public function get signals():InteractiveObjectSignalSet 
		{ 
			return nativeSignalSet as InteractiveObjectSignalSet;
		}
	}
}
package org.osflash.signals.natives.base 
{
	import org.osflash.signals.natives.sets.NativeSignalSet;
	import org.osflash.signals.natives.sets.TimerSignalSet;

	import flash.utils.Timer;

	public class SignalTimer extends Timer implements ISignalSetOwner
	{
		private var _signals:NativeSignalSet;
		
		public function get nativeSignalSet():NativeSignalSet
		{
			return _signals ||= new TimerSignalSet(this);
		}
		
		public function get signals():TimerSignalSet 
		{ 
			return nativeSignalSet as TimerSignalSet;
		}
	}
}
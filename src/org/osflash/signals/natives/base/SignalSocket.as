package org.osflash.signals.natives.base 
{
	import org.osflash.signals.natives.sets.NativeSignalSet;

	import flash.net.Socket;
	import org.osflash.signals.natives.sets.SocketSignalSet;
	
	public class SignalSocket extends Socket implements ISignalSetOwner
	{
		private var _signals:NativeSignalSet;
		
		public function get nativeSignalSet():NativeSignalSet
		{
			return _signals ||= new SocketSignalSet(this);
		}
				
		public function get signals():SocketSignalSet 
		{ 
			return nativeSignalSet as SocketSignalSet;
		}
	}
}
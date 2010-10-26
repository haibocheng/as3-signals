package org.osflash.signals.natives.base 
{
	import org.osflash.signals.natives.sets.NativeSignalSet;

	/**
	 * @author Jon Adams
	 */
	public interface ISignalSetOwner 
	{
		/**
		 * The type of event permitted to be dispatched. Corresponds to flash.events.Event.type.
		 */
		function get nativeSignalSet():NativeSignalSet
	}
}

/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this service wrapper you may modify the generated sub-class of this class - PrintLogsServices.as.
 */
package services.printlogsservices
{
import Model.Constants;

import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.serializers.utility.TypeUtility;

import mx.collections.ItemResponder;
import mx.data.RPCDataManager;
import mx.data.errors.DataServiceError;
import mx.rpc.AbstractOperation;
import mx.rpc.AsyncToken;
import mx.rpc.remoting.Operation;
import mx.rpc.remoting.RemoteObject;

import valueObjects.PrintLogs;

[ExcludeClass]
internal class _Super_PrintLogsServices extends com.adobe.fiber.services.wrapper.RemoteObjectServiceWrapper
{
	private var _printLogsRPCDataManager : mx.data.RPCDataManager;
	private var managersArray : Array = new Array();
	
	
	public const DATA_MANAGER_PRINTLOGS : String = "PrintLogs";
	
	public function getDataManager(dataManagerName:String) : mx.data.RPCDataManager
	{
		switch (dataManagerName)
		{
			case (DATA_MANAGER_PRINTLOGS):
				return _printLogsRPCDataManager;
			default:
				return null;
		}
	}
	
    // Constructor
    public function _Super_PrintLogsServices()
    {
        // initialize service control
        _serviceControl = new mx.rpc.remoting.RemoteObject();

        // initialize RemoteClass alias for all entities returned by functions of this service

        var operations:Object = new Object();
        var operation:mx.rpc.remoting.Operation;
		
		// initialize RemoteClass alias for all entities returned by functions of this service
		valueObjects.PrintLogs._initRemoteClassAlias();

        operation = new mx.rpc.remoting.Operation(null, "getAllPrintLogs");
         operation.resultElementType = Object;
        operations["getAllPrintLogs"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getAllPrintLogsByModelID");
         operation.resultType = Object;
        operations["getAllPrintLogsByModelID"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getPrintLogsByID");
         operation.resultType = Object;
        operations["getPrintLogsByID"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "createPrintLogs");
         operation.resultType = Object;
        operations["createPrintLogs"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "updatePrintLogs");
         operation.resultType = Object;
        operations["updatePrintLogs"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "deletePrintLogs");
         operation.resultType = Object;
        operations["deletePrintLogs"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "count");
         operation.resultType = Object;
        operations["count"] = operation;
        operation = new mx.rpc.remoting.Operation(null, "getPrintLogs_paged");
         operation.resultElementType = Object;
        operations["getPrintLogs_paged"] = operation;

        _serviceControl.operations = operations;
        _serviceControl.convertResultHandler = com.adobe.serializers.utility.TypeUtility.convertResultHandler;
        _serviceControl.source = "PrintLogsServices";
        _serviceControl.endpoint = Constants.GATEWAY_URL+"gateway.php";
		var managedAssociation : mx.data.ManagedAssociation;
		var managedAssocsArray : Array;
		// initialize PrintLogs data manager
		_printLogsRPCDataManager = new mx.data.RPCDataManager();
		managersArray.push(_printLogsRPCDataManager);
		
		managedAssocsArray = new Array();
		
		_printLogsRPCDataManager.destination = "typePrintLogsRPCDataManager";
		_printLogsRPCDataManager.service = _serviceControl;        
		_printLogsRPCDataManager.identities =  "idprintLogs";      
		_printLogsRPCDataManager.itemClass = valueObjects.PrintLogs; 
		
		var dmOperation : mx.data.ManagedOperation;
		var dmQuery : mx.data.ManagedQuery;
		
		dmQuery = new mx.data.ManagedQuery("getAllPrintLogs");
		dmQuery.propertySpecifier = "date,models_idmodels,QA,time,weight,completion,encoding";
		dmQuery.parameters = "";
		_printLogsRPCDataManager.addManagedOperation(dmQuery);
		
		dmOperation = new mx.data.ManagedOperation("updatePrintLogs", "update");
		dmOperation.parameters = "item";
		_printLogsRPCDataManager.addManagedOperation(dmOperation);     
		
		dmOperation = new mx.data.ManagedOperation("getPrintLogsByID", "get");
		dmOperation.parameters = "idprintLogs";
		_printLogsRPCDataManager.addManagedOperation(dmOperation);     
		
		dmOperation = new mx.data.ManagedOperation("createPrintLogs", "create");
		dmOperation.parameters = "item";
		_printLogsRPCDataManager.addManagedOperation(dmOperation);     
		
		_serviceControl.managers = managersArray;
		
		

         preInitializeService();
         model_internal::initialize();
    }
    
    //init initialization routine here, child class to override
    protected function preInitializeService():void
    {
        destination = "PrintLogsServices";      
    }
	
	
	/**
	 * Commit all of the pending changes for this DataService, as well as all of the pending changes of all DataServices
	 * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
	 * managed association properties and share the same set of channels. 
	 *
	 * @see mx.data.DataManager
	 * @see mx.data.DataStore
	 *
	 * @param itemsOrCollections:Array This is an optional parameter which defaults to null when
	 *  you want to commit all pending changes.  If you want to commit a subset of the pending
	 *  changes use this argument to specify a list of managed ListCollectionView instances
	 *  and/or managed items.  ListCollectionView objects are most typically ArrayCollections
	 *  you have provided to your fill method.  The items appropriate for this method are
	 *  any managed version of the item.  These are any items you retrieve from getItem, createItem
	 *  or using the getItemAt method from a managed collection.  Only changes for the
	 *  items defined by any of the values in this array will be committed.
	 *
	 * @param cascadeCommit if true, also commit changes made to any associated
	 *  items supplied in this list.
	 *
	 *  @return AsyncToken that is returned in <code>call</code> property of
	 *  either the <code>ResultEvent.RESULT</code> or in the
	 *  <code>FaultEvent.FAULT</code>.
	 *  Custom data can be attached to this object and inspected later
	 *  during the event handling phase.  If no changes have been made
	 *  to the relevant items, null is returned instead of an AsyncToken.
	 */
	public function commit(itemsOrCollections:Array=null, cascadeCommit:Boolean=false):mx.rpc.AsyncToken
	{
		return _printLogsRPCDataManager.dataStore.commit(itemsOrCollections, cascadeCommit);
	}
	
	/**
	 * Reverts all pending (uncommitted) changes for this DataService, as well as all of the pending changes of all DataServics
	 * sharing the same DataStore.  By default, a DataService shares the same DataStore with other DataServices if they have 
	 * managed association properties and share the same set of channels. 
	 *
	 * In case you specify a value for itemsOrCollections:Array parameter, only pending (uncommitted) changes for the specified 
	 * managed items or collections will be reverted.
	 *
	 * @see mx.data.DataManager
	 * @see mx.data.DataStore
	 * 
	 * @param itemsOrCollections:Array This is an optional parameter which defaults to null 
	 * when you want to revert all pending (uncommitted) changes for all DataServices
	 * managed by this DataStore. If you want to revert a subset of the pending changes use 
	 * this argument to specify a array of managed items or collections
	 *
	 * @return true if any changes were reverted.
	 * @throws DataServiceError if the passed in array contains non-managed items or collections
	 *  
	 */
	public function revertChanges(itemsOrCollections:Array=null):Boolean
	{
		if (itemsOrCollections == null)
		{
			// Revert all changes
			return _printLogsRPCDataManager.dataStore.revertChanges();
		}
		else
		{
			// Revert passed in items
			var anyChangeItemReverted:Boolean = false;
			
			// Iterate over array and revert managed item or collection as the case may be
			for each (var changeItem:Object in itemsOrCollections)
			{
				if (changeItem is com.adobe.fiber.valueobjects.IValueObject)
				{
					var dataMgr:mx.data.DataManager = getDataManager(changeItem._model.getEntityName());
					anyChangeItemReverted ||= dataMgr.revertChanges(mx.data.IManaged(changeItem))
				}
				else if (changeItem is mx.collections.ListCollectionView)
				{
					anyChangeItemReverted ||= _printLogsRPCDataManager.dataStore.revertChangesForCollection(mx.collections.ListCollectionView(changeItem));
				}
				else
				{
					throw new mx.data.errors.DataServiceError("revertChanges called on array that contains non-managed items or collections");
				}
			}
			return anyChangeItemReverted;
		}
	}
    

    /**
      * This method is a generated wrapper used to call the 'getAllPrintLogs' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllPrintLogs() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllPrintLogs");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getAllPrintLogsByModelID' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getAllPrintLogsByModelID(modelID:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getAllPrintLogsByModelID");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(modelID) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getPrintLogsByID' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPrintLogsByID(itemID:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPrintLogsByID");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(itemID) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'createPrintLogs' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function createPrintLogs(item:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("createPrintLogs");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(item) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'updatePrintLogs' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function updatePrintLogs(item:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("updatePrintLogs");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(item) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'deletePrintLogs' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function deletePrintLogs(itemID:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("deletePrintLogs");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(itemID) ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'count' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function count() : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("count");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send() ;
        return _internal_token;
    }
     
    /**
      * This method is a generated wrapper used to call the 'getPrintLogs_paged' operation. It returns an mx.rpc.AsyncToken whose 
      * result property will be populated with the result of the operation when the server response is received. 
      * To use this result from MXML code, define a CallResponder component and assign its token property to this method's return value. 
      * You can then bind to CallResponder.lastResult or listen for the CallResponder.result or fault events.
      *
      * @see mx.rpc.AsyncToken
      * @see mx.rpc.CallResponder 
      *
      * @return an mx.rpc.AsyncToken whose result property will be populated with the result of the operation when the server response is received.
      */
    public function getPrintLogs_paged(startIndex:Object, numItems:Object) : mx.rpc.AsyncToken
    {
        var _internal_operation:mx.rpc.AbstractOperation = _serviceControl.getOperation("getPrintLogs_paged");
		var _internal_token:mx.rpc.AsyncToken = _internal_operation.send(startIndex,numItems) ;
        return _internal_token;
    }
     
}

}

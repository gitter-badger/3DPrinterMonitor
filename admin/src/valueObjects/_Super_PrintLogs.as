/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - PrintLogs.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.EventDispatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[Managed]
[ExcludeClass]
public class _Super_PrintLogs extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _PrintLogsEntityMetadata;
    model_internal var _changedObjects:mx.collections.ArrayCollection = new ArrayCollection();

    public function getChangedObjects() : Array
    {
        _changedObjects.addItemAt(this,0);
        return _changedObjects.source;
    }

    public function clearChangedObjects() : void
    {
        _changedObjects.removeAll();
    }

    /**
     * properties
     */
    private var _internal_idprintLogs : int;
    private var _internal_models_idmodels : int;
    private var _internal_QA : int;
    private var _internal_time : int;
    private var _internal_date : Date;
    private var _internal_weight : int;
    private var _internal_completion : int;
    private var _internal_encoding : int;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_PrintLogs()
    {
        _model = new _PrintLogsEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get idprintLogs() : int
    {
        return _internal_idprintLogs;
    }

    [Bindable(event="propertyChange")]
    public function get models_idmodels() : int
    {
        return _internal_models_idmodels;
    }

    [Bindable(event="propertyChange")]
    public function get QA() : int
    {
        return _internal_QA;
    }

    [Bindable(event="propertyChange")]
    public function get time() : int
    {
        return _internal_time;
    }

    [Bindable(event="propertyChange")]
    public function get date() : Date
    {
        return _internal_date;
    }

    [Bindable(event="propertyChange")]
    public function get weight() : int
    {
        return _internal_weight;
    }

    [Bindable(event="propertyChange")]
    public function get completion() : int
    {
        return _internal_completion;
    }

    [Bindable(event="propertyChange")]
    public function get encoding() : int
    {
        return _internal_encoding;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set idprintLogs(value:int) : void
    {
        var oldValue:int = _internal_idprintLogs;
        if (oldValue !== value)
        {
            _internal_idprintLogs = value;
        }
    }

    public function set models_idmodels(value:int) : void
    {
        var oldValue:int = _internal_models_idmodels;
        if (oldValue !== value)
        {
            _internal_models_idmodels = value;
        }
    }

    public function set QA(value:int) : void
    {
        var oldValue:int = _internal_QA;
        if (oldValue !== value)
        {
            _internal_QA = value;
        }
    }

    public function set time(value:int) : void
    {
        var oldValue:int = _internal_time;
        if (oldValue !== value)
        {
            _internal_time = value;
        }
    }

    public function set date(value:Date) : void
    {
        var oldValue:Date = _internal_date;
        if (oldValue !== value)
        {
            _internal_date = value;
        }
    }

    public function set weight(value:int) : void
    {
        var oldValue:int = _internal_weight;
        if (oldValue !== value)
        {
            _internal_weight = value;
        }
    }

    public function set completion(value:int) : void
    {
        var oldValue:int = _internal_completion;
        if (oldValue !== value)
        {
            _internal_completion = value;
        }
    }

    public function set encoding(value:int) : void
    {
        var oldValue:int = _internal_encoding;
        if (oldValue !== value)
        {
            _internal_encoding = value;
        }
    }

    /**
     * Data/source property setter listeners
     *
     * Each data property whose value affects other properties or the validity of the entity
     * needs to invalidate all previously calculated artifacts. These include:
     *  - any derived properties or constraints that reference the given data property.
     *  - any availability guards (variant expressions) that reference the given data property.
     *  - any style validations, message tokens or guards that reference the given data property.
     *  - the validity of the property (and the containing entity) if the given data property has a length restriction.
     *  - the validity of the property (and the containing entity) if the given data property is required.
     */


    /**
     * valid related derived properties
     */
    model_internal var _isValid : Boolean;
    model_internal var _invalidConstraints:Array = new Array();
    model_internal var _validationFailureMessages:Array = new Array();

    /**
     * derived property calculators
     */

    /**
     * isValid calculator
     */
    model_internal function calculateIsValid():Boolean
    {
        var violatedConsts:Array = new Array();
        var validationFailureMessages:Array = new Array();

        var propertyValidity:Boolean = true;

        model_internal::_cacheInitialized_isValid = true;
        model_internal::invalidConstraints_der = violatedConsts;
        model_internal::validationFailureMessages_der = validationFailureMessages;
        return violatedConsts.length == 0 && propertyValidity;
    }

    /**
     * derived property setters
     */

    model_internal function set isValid_der(value:Boolean) : void
    {
        var oldValue:Boolean = model_internal::_isValid;
        if (oldValue !== value)
        {
            model_internal::_isValid = value;
            _model.model_internal::fireChangeEvent("isValid", oldValue, model_internal::_isValid);
        }
    }

    /**
     * derived property getters
     */

    [Transient]
    [Bindable(event="propertyChange")]
    public function get _model() : _PrintLogsEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _PrintLogsEntityMetadata) : void
    {
        var oldValue : _PrintLogsEntityMetadata = model_internal::_dminternal_model;
        if (oldValue !== value)
        {
            model_internal::_dminternal_model = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "_model", oldValue, model_internal::_dminternal_model));
        }
    }

    /**
     * methods
     */


    /**
     *  services
     */
    private var _managingService:com.adobe.fiber.services.IFiberManagingService;

    public function set managingService(managingService:com.adobe.fiber.services.IFiberManagingService):void
    {
        _managingService = managingService;
    }

    model_internal function set invalidConstraints_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_invalidConstraints;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_invalidConstraints = value;
            _model.model_internal::fireChangeEvent("invalidConstraints", oldValue, model_internal::_invalidConstraints);
        }
    }

    model_internal function set validationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_validationFailureMessages;
        // avoid firing the event when old and new value are different empty arrays
        if (oldValue !== value && (oldValue.length > 0 || value.length > 0))
        {
            model_internal::_validationFailureMessages = value;
            _model.model_internal::fireChangeEvent("validationFailureMessages", oldValue, model_internal::_validationFailureMessages);
        }
    }


}

}

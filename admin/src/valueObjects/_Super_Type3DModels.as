/**
 * This is a generated class and is not intended for modification.  To customize behavior
 * of this value object you may modify the generated sub-class of this class - Type3DModels.as.
 */

package valueObjects
{
import com.adobe.fiber.services.IFiberManagingService;
import com.adobe.fiber.util.FiberUtils;
import com.adobe.fiber.valueobjects.IValueObject;
import flash.events.Event;
import flash.events.EventDispatcher;
import mx.binding.utils.ChangeWatcher;
import mx.collections.ArrayCollection;
import mx.events.PropertyChangeEvent;
import mx.validators.ValidationResult;

import flash.net.registerClassAlias;
import flash.net.getClassByAlias;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;

use namespace model_internal;

[Managed]
[ExcludeClass]
public class _Super_Type3DModels extends flash.events.EventDispatcher implements com.adobe.fiber.valueobjects.IValueObject
{
    model_internal static function initRemoteClassAliasSingle(cz:Class) : void
    {
    }

    model_internal static function initRemoteClassAliasAllRelated() : void
    {
    }

    model_internal var _dminternal_model : _Type3DModelsEntityMetadata;
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
    private var _internal_weight : String;
    private var _internal_sizeZ : String;
    private var _internal_sizeY : String;
    private var _internal_name : String;
    private var _internal_STLfile : String;
    private var _internal_sizeX : String;
    private var _internal_idmodels : int;
    private var _internal_cost : String;
    private var _internal_TVA : String;
    private var _internal_RRP : String;

    private static var emptyArray:Array = new Array();


    /**
     * derived property cache initialization
     */
    model_internal var _cacheInitialized_isValid:Boolean = false;

    model_internal var _changeWatcherArray:Array = new Array();

    public function _Super_Type3DModels()
    {
        _model = new _Type3DModelsEntityMetadata(this);

        // Bind to own data or source properties for cache invalidation triggering
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "weight", model_internal::setterListenerWeight));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sizeZ", model_internal::setterListenerSizeZ));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sizeY", model_internal::setterListenerSizeY));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "name", model_internal::setterListenerName));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "STLfile", model_internal::setterListenerSTLfile));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "sizeX", model_internal::setterListenerSizeX));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "cost", model_internal::setterListenerCost));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "TVA", model_internal::setterListenerTVA));
        model_internal::_changeWatcherArray.push(mx.binding.utils.ChangeWatcher.watch(this, "RRP", model_internal::setterListenerRRP));

    }

    /**
     * data/source property getters
     */

    [Bindable(event="propertyChange")]
    public function get weight() : String
    {
        return _internal_weight;
    }

    [Bindable(event="propertyChange")]
    public function get sizeZ() : String
    {
        return _internal_sizeZ;
    }

    [Bindable(event="propertyChange")]
    public function get sizeY() : String
    {
        return _internal_sizeY;
    }

    [Bindable(event="propertyChange")]
    public function get name() : String
    {
        return _internal_name;
    }

    [Bindable(event="propertyChange")]
    public function get STLfile() : String
    {
        return _internal_STLfile;
    }

    [Bindable(event="propertyChange")]
    public function get sizeX() : String
    {
        return _internal_sizeX;
    }

    [Bindable(event="propertyChange")]
    public function get idmodels() : int
    {
        return _internal_idmodels;
    }

    [Bindable(event="propertyChange")]
    public function get cost() : String
    {
        return _internal_cost;
    }

    [Bindable(event="propertyChange")]
    public function get TVA() : String
    {
        return _internal_TVA;
    }

    [Bindable(event="propertyChange")]
    public function get RRP() : String
    {
        return _internal_RRP;
    }

    public function clearAssociations() : void
    {
    }

    /**
     * data/source property setters
     */

    public function set weight(value:String) : void
    {
        var oldValue:String = _internal_weight;
        if (oldValue !== value)
        {
            _internal_weight = value;
        }
    }

    public function set sizeZ(value:String) : void
    {
        var oldValue:String = _internal_sizeZ;
        if (oldValue !== value)
        {
            _internal_sizeZ = value;
        }
    }

    public function set sizeY(value:String) : void
    {
        var oldValue:String = _internal_sizeY;
        if (oldValue !== value)
        {
            _internal_sizeY = value;
        }
    }

    public function set name(value:String) : void
    {
        var oldValue:String = _internal_name;
        if (oldValue !== value)
        {
            _internal_name = value;
        }
    }

    public function set STLfile(value:String) : void
    {
        var oldValue:String = _internal_STLfile;
        if (oldValue !== value)
        {
            _internal_STLfile = value;
        }
    }

    public function set sizeX(value:String) : void
    {
        var oldValue:String = _internal_sizeX;
        if (oldValue !== value)
        {
            _internal_sizeX = value;
        }
    }

    public function set idmodels(value:int) : void
    {
        var oldValue:int = _internal_idmodels;
        if (oldValue !== value)
        {
            _internal_idmodels = value;
        }
    }

    public function set cost(value:String) : void
    {
        var oldValue:String = _internal_cost;
        if (oldValue !== value)
        {
            _internal_cost = value;
        }
    }

    public function set TVA(value:String) : void
    {
        var oldValue:String = _internal_TVA;
        if (oldValue !== value)
        {
            _internal_TVA = value;
        }
    }

    public function set RRP(value:String) : void
    {
        var oldValue:String = _internal_RRP;
        if (oldValue !== value)
        {
            _internal_RRP = value;
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

    model_internal function setterListenerWeight(value:flash.events.Event):void
    {
        _model.invalidateDependentOnWeight();
    }

    model_internal function setterListenerSizeZ(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSizeZ();
    }

    model_internal function setterListenerSizeY(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSizeY();
    }

    model_internal function setterListenerName(value:flash.events.Event):void
    {
        _model.invalidateDependentOnName();
    }

    model_internal function setterListenerSTLfile(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSTLfile();
    }

    model_internal function setterListenerSizeX(value:flash.events.Event):void
    {
        _model.invalidateDependentOnSizeX();
    }

    model_internal function setterListenerCost(value:flash.events.Event):void
    {
        _model.invalidateDependentOnCost();
    }

    model_internal function setterListenerTVA(value:flash.events.Event):void
    {
        _model.invalidateDependentOnTVA();
    }

    model_internal function setterListenerRRP(value:flash.events.Event):void
    {
        _model.invalidateDependentOnRRP();
    }


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
        if (!_model.weightIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_weightValidationFailureMessages);
        }
        if (!_model.sizeZIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sizeZValidationFailureMessages);
        }
        if (!_model.sizeYIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sizeYValidationFailureMessages);
        }
        if (!_model.nameIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_nameValidationFailureMessages);
        }
        if (!_model.STLfileIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_STLfileValidationFailureMessages);
        }
        if (!_model.sizeXIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_sizeXValidationFailureMessages);
        }
        if (!_model.costIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_costValidationFailureMessages);
        }
        if (!_model.TVAIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_TVAValidationFailureMessages);
        }
        if (!_model.RRPIsValid)
        {
            propertyValidity = false;
            com.adobe.fiber.util.FiberUtils.arrayAdd(validationFailureMessages, _model.model_internal::_RRPValidationFailureMessages);
        }

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
    public function get _model() : _Type3DModelsEntityMetadata
    {
        return model_internal::_dminternal_model;
    }

    public function set _model(value : _Type3DModelsEntityMetadata) : void
    {
        var oldValue : _Type3DModelsEntityMetadata = model_internal::_dminternal_model;
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

    model_internal var _doValidationCacheOfWeight : Array = null;
    model_internal var _doValidationLastValOfWeight : String;

    model_internal function _doValidationForWeight(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfWeight != null && model_internal::_doValidationLastValOfWeight == value)
           return model_internal::_doValidationCacheOfWeight ;

        _model.model_internal::_weightIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isWeightAvailable && _internal_weight == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "weight is required"));
        }

        model_internal::_doValidationCacheOfWeight = validationFailures;
        model_internal::_doValidationLastValOfWeight = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSizeZ : Array = null;
    model_internal var _doValidationLastValOfSizeZ : String;

    model_internal function _doValidationForSizeZ(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSizeZ != null && model_internal::_doValidationLastValOfSizeZ == value)
           return model_internal::_doValidationCacheOfSizeZ ;

        _model.model_internal::_sizeZIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSizeZAvailable && _internal_sizeZ == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sizeZ is required"));
        }

        model_internal::_doValidationCacheOfSizeZ = validationFailures;
        model_internal::_doValidationLastValOfSizeZ = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSizeY : Array = null;
    model_internal var _doValidationLastValOfSizeY : String;

    model_internal function _doValidationForSizeY(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSizeY != null && model_internal::_doValidationLastValOfSizeY == value)
           return model_internal::_doValidationCacheOfSizeY ;

        _model.model_internal::_sizeYIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSizeYAvailable && _internal_sizeY == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sizeY is required"));
        }

        model_internal::_doValidationCacheOfSizeY = validationFailures;
        model_internal::_doValidationLastValOfSizeY = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfName : Array = null;
    model_internal var _doValidationLastValOfName : String;

    model_internal function _doValidationForName(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfName != null && model_internal::_doValidationLastValOfName == value)
           return model_internal::_doValidationCacheOfName ;

        _model.model_internal::_nameIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isNameAvailable && _internal_name == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "name is required"));
        }

        model_internal::_doValidationCacheOfName = validationFailures;
        model_internal::_doValidationLastValOfName = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSTLfile : Array = null;
    model_internal var _doValidationLastValOfSTLfile : String;

    model_internal function _doValidationForSTLfile(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSTLfile != null && model_internal::_doValidationLastValOfSTLfile == value)
           return model_internal::_doValidationCacheOfSTLfile ;

        _model.model_internal::_STLfileIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSTLfileAvailable && _internal_STLfile == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "STLfile is required"));
        }

        model_internal::_doValidationCacheOfSTLfile = validationFailures;
        model_internal::_doValidationLastValOfSTLfile = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfSizeX : Array = null;
    model_internal var _doValidationLastValOfSizeX : String;

    model_internal function _doValidationForSizeX(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfSizeX != null && model_internal::_doValidationLastValOfSizeX == value)
           return model_internal::_doValidationCacheOfSizeX ;

        _model.model_internal::_sizeXIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isSizeXAvailable && _internal_sizeX == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "sizeX is required"));
        }

        model_internal::_doValidationCacheOfSizeX = validationFailures;
        model_internal::_doValidationLastValOfSizeX = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfCost : Array = null;
    model_internal var _doValidationLastValOfCost : String;

    model_internal function _doValidationForCost(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfCost != null && model_internal::_doValidationLastValOfCost == value)
           return model_internal::_doValidationCacheOfCost ;

        _model.model_internal::_costIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isCostAvailable && _internal_cost == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "cost is required"));
        }

        model_internal::_doValidationCacheOfCost = validationFailures;
        model_internal::_doValidationLastValOfCost = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfTVA : Array = null;
    model_internal var _doValidationLastValOfTVA : String;

    model_internal function _doValidationForTVA(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfTVA != null && model_internal::_doValidationLastValOfTVA == value)
           return model_internal::_doValidationCacheOfTVA ;

        _model.model_internal::_TVAIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isTVAAvailable && _internal_TVA == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "TVA is required"));
        }

        model_internal::_doValidationCacheOfTVA = validationFailures;
        model_internal::_doValidationLastValOfTVA = value;

        return validationFailures;
    }
    
    model_internal var _doValidationCacheOfRRP : Array = null;
    model_internal var _doValidationLastValOfRRP : String;

    model_internal function _doValidationForRRP(valueIn:Object):Array
    {
        var value : String = valueIn as String;

        if (model_internal::_doValidationCacheOfRRP != null && model_internal::_doValidationLastValOfRRP == value)
           return model_internal::_doValidationCacheOfRRP ;

        _model.model_internal::_RRPIsValidCacheInitialized = true;
        var validationFailures:Array = new Array();
        var errorMessage:String;
        var failure:Boolean;

        var valRes:ValidationResult;
        if (_model.isRRPAvailable && _internal_RRP == null)
        {
            validationFailures.push(new ValidationResult(true, "", "", "RRP is required"));
        }

        model_internal::_doValidationCacheOfRRP = validationFailures;
        model_internal::_doValidationLastValOfRRP = value;

        return validationFailures;
    }
    

}

}

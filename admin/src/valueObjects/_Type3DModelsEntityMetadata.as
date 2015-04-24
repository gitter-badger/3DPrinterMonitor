
/**
 * This is a generated class and is not intended for modification.  
 */
package valueObjects
{
import com.adobe.fiber.styles.IStyle;
import com.adobe.fiber.styles.Style;
import com.adobe.fiber.styles.StyleValidator;
import com.adobe.fiber.valueobjects.AbstractEntityMetadata;
import com.adobe.fiber.valueobjects.AvailablePropertyIterator;
import com.adobe.fiber.valueobjects.IPropertyIterator;
import mx.events.ValidationResultEvent;
import com.adobe.fiber.core.model_internal;
import com.adobe.fiber.valueobjects.IModelType;
import mx.events.PropertyChangeEvent;

use namespace model_internal;

[ExcludeClass]
internal class _Type3DModelsEntityMetadata extends com.adobe.fiber.valueobjects.AbstractEntityMetadata
{
    private static var emptyArray:Array = new Array();

    model_internal static var allProperties:Array = new Array("weight", "sizeZ", "sizeY", "name", "STLfile", "sizeX", "idmodels", "cost", "TVA", "RRP");
    model_internal static var allAssociationProperties:Array = new Array();
    model_internal static var allRequiredProperties:Array = new Array("weight", "sizeZ", "sizeY", "name", "STLfile", "sizeX", "idmodels", "cost", "TVA", "RRP");
    model_internal static var allAlwaysAvailableProperties:Array = new Array("weight", "sizeZ", "sizeY", "name", "STLfile", "sizeX", "idmodels", "cost", "TVA", "RRP");
    model_internal static var guardedProperties:Array = new Array();
    model_internal static var dataProperties:Array = new Array("weight", "sizeZ", "sizeY", "name", "STLfile", "sizeX", "idmodels", "cost", "TVA", "RRP");
    model_internal static var sourceProperties:Array = emptyArray
    model_internal static var nonDerivedProperties:Array = new Array("weight", "sizeZ", "sizeY", "name", "STLfile", "sizeX", "idmodels", "cost", "TVA", "RRP");
    model_internal static var derivedProperties:Array = new Array();
    model_internal static var collectionProperties:Array = new Array();
    model_internal static var collectionBaseMap:Object;
    model_internal static var entityName:String = "Type3DModels";
    model_internal static var dependentsOnMap:Object;
    model_internal static var dependedOnServices:Array = new Array();
    model_internal static var propertyTypeMap:Object;

    
    model_internal var _weightIsValid:Boolean;
    model_internal var _weightValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _weightIsValidCacheInitialized:Boolean = false;
    model_internal var _weightValidationFailureMessages:Array;
    
    model_internal var _sizeZIsValid:Boolean;
    model_internal var _sizeZValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sizeZIsValidCacheInitialized:Boolean = false;
    model_internal var _sizeZValidationFailureMessages:Array;
    
    model_internal var _sizeYIsValid:Boolean;
    model_internal var _sizeYValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sizeYIsValidCacheInitialized:Boolean = false;
    model_internal var _sizeYValidationFailureMessages:Array;
    
    model_internal var _nameIsValid:Boolean;
    model_internal var _nameValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _nameIsValidCacheInitialized:Boolean = false;
    model_internal var _nameValidationFailureMessages:Array;
    
    model_internal var _STLfileIsValid:Boolean;
    model_internal var _STLfileValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _STLfileIsValidCacheInitialized:Boolean = false;
    model_internal var _STLfileValidationFailureMessages:Array;
    
    model_internal var _sizeXIsValid:Boolean;
    model_internal var _sizeXValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _sizeXIsValidCacheInitialized:Boolean = false;
    model_internal var _sizeXValidationFailureMessages:Array;
    
    model_internal var _costIsValid:Boolean;
    model_internal var _costValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _costIsValidCacheInitialized:Boolean = false;
    model_internal var _costValidationFailureMessages:Array;
    
    model_internal var _TVAIsValid:Boolean;
    model_internal var _TVAValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _TVAIsValidCacheInitialized:Boolean = false;
    model_internal var _TVAValidationFailureMessages:Array;
    
    model_internal var _RRPIsValid:Boolean;
    model_internal var _RRPValidator:com.adobe.fiber.styles.StyleValidator;
    model_internal var _RRPIsValidCacheInitialized:Boolean = false;
    model_internal var _RRPValidationFailureMessages:Array;

    model_internal var _instance:_Super_Type3DModels;
    model_internal static var _nullStyle:com.adobe.fiber.styles.Style = new com.adobe.fiber.styles.Style();

    public function _Type3DModelsEntityMetadata(value : _Super_Type3DModels)
    {
        // initialize property maps
        if (model_internal::dependentsOnMap == null)
        {
            // dependents map
            model_internal::dependentsOnMap = new Object();
            model_internal::dependentsOnMap["weight"] = new Array();
            model_internal::dependentsOnMap["sizeZ"] = new Array();
            model_internal::dependentsOnMap["sizeY"] = new Array();
            model_internal::dependentsOnMap["name"] = new Array();
            model_internal::dependentsOnMap["STLfile"] = new Array();
            model_internal::dependentsOnMap["sizeX"] = new Array();
            model_internal::dependentsOnMap["idmodels"] = new Array();
            model_internal::dependentsOnMap["cost"] = new Array();
            model_internal::dependentsOnMap["TVA"] = new Array();
            model_internal::dependentsOnMap["RRP"] = new Array();

            // collection base map
            model_internal::collectionBaseMap = new Object();
        }

        // Property type Map
        model_internal::propertyTypeMap = new Object();
        model_internal::propertyTypeMap["weight"] = "String";
        model_internal::propertyTypeMap["sizeZ"] = "String";
        model_internal::propertyTypeMap["sizeY"] = "String";
        model_internal::propertyTypeMap["name"] = "String";
        model_internal::propertyTypeMap["STLfile"] = "String";
        model_internal::propertyTypeMap["sizeX"] = "String";
        model_internal::propertyTypeMap["idmodels"] = "int";
        model_internal::propertyTypeMap["cost"] = "String";
        model_internal::propertyTypeMap["TVA"] = "String";
        model_internal::propertyTypeMap["RRP"] = "String";

        model_internal::_instance = value;
        model_internal::_weightValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForWeight);
        model_internal::_weightValidator.required = true;
        model_internal::_weightValidator.requiredFieldError = "weight is required";
        //model_internal::_weightValidator.source = model_internal::_instance;
        //model_internal::_weightValidator.property = "weight";
        model_internal::_sizeZValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSizeZ);
        model_internal::_sizeZValidator.required = true;
        model_internal::_sizeZValidator.requiredFieldError = "sizeZ is required";
        //model_internal::_sizeZValidator.source = model_internal::_instance;
        //model_internal::_sizeZValidator.property = "sizeZ";
        model_internal::_sizeYValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSizeY);
        model_internal::_sizeYValidator.required = true;
        model_internal::_sizeYValidator.requiredFieldError = "sizeY is required";
        //model_internal::_sizeYValidator.source = model_internal::_instance;
        //model_internal::_sizeYValidator.property = "sizeY";
        model_internal::_nameValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForName);
        model_internal::_nameValidator.required = true;
        model_internal::_nameValidator.requiredFieldError = "name is required";
        //model_internal::_nameValidator.source = model_internal::_instance;
        //model_internal::_nameValidator.property = "name";
        model_internal::_STLfileValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSTLfile);
        model_internal::_STLfileValidator.required = true;
        model_internal::_STLfileValidator.requiredFieldError = "STLfile is required";
        //model_internal::_STLfileValidator.source = model_internal::_instance;
        //model_internal::_STLfileValidator.property = "STLfile";
        model_internal::_sizeXValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForSizeX);
        model_internal::_sizeXValidator.required = true;
        model_internal::_sizeXValidator.requiredFieldError = "sizeX is required";
        //model_internal::_sizeXValidator.source = model_internal::_instance;
        //model_internal::_sizeXValidator.property = "sizeX";
        model_internal::_costValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForCost);
        model_internal::_costValidator.required = true;
        model_internal::_costValidator.requiredFieldError = "cost is required";
        //model_internal::_costValidator.source = model_internal::_instance;
        //model_internal::_costValidator.property = "cost";
        model_internal::_TVAValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForTVA);
        model_internal::_TVAValidator.required = true;
        model_internal::_TVAValidator.requiredFieldError = "TVA is required";
        //model_internal::_TVAValidator.source = model_internal::_instance;
        //model_internal::_TVAValidator.property = "TVA";
        model_internal::_RRPValidator = new StyleValidator(model_internal::_instance.model_internal::_doValidationForRRP);
        model_internal::_RRPValidator.required = true;
        model_internal::_RRPValidator.requiredFieldError = "RRP is required";
        //model_internal::_RRPValidator.source = model_internal::_instance;
        //model_internal::_RRPValidator.property = "RRP";
    }

    override public function getEntityName():String
    {
        return model_internal::entityName;
    }

    override public function getProperties():Array
    {
        return model_internal::allProperties;
    }

    override public function getAssociationProperties():Array
    {
        return model_internal::allAssociationProperties;
    }

    override public function getRequiredProperties():Array
    {
         return model_internal::allRequiredProperties;   
    }

    override public function getDataProperties():Array
    {
        return model_internal::dataProperties;
    }

    public function getSourceProperties():Array
    {
        return model_internal::sourceProperties;
    }

    public function getNonDerivedProperties():Array
    {
        return model_internal::nonDerivedProperties;
    }

    override public function getGuardedProperties():Array
    {
        return model_internal::guardedProperties;
    }

    override public function getUnguardedProperties():Array
    {
        return model_internal::allAlwaysAvailableProperties;
    }

    override public function getDependants(propertyName:String):Array
    {
       if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a data property of entity Type3DModels");
            
       return model_internal::dependentsOnMap[propertyName] as Array;  
    }

    override public function getDependedOnServices():Array
    {
        return model_internal::dependedOnServices;
    }

    override public function getCollectionProperties():Array
    {
        return model_internal::collectionProperties;
    }

    override public function getCollectionBase(propertyName:String):String
    {
        if (model_internal::collectionProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a collection property of entity Type3DModels");

        return model_internal::collectionBaseMap[propertyName];
    }
    
    override public function getPropertyType(propertyName:String):String
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
            throw new Error(propertyName + " is not a property of Type3DModels");

        return model_internal::propertyTypeMap[propertyName];
    }

    override public function getAvailableProperties():com.adobe.fiber.valueobjects.IPropertyIterator
    {
        return new com.adobe.fiber.valueobjects.AvailablePropertyIterator(this);
    }

    override public function getValue(propertyName:String):*
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Type3DModels");
        }

        return model_internal::_instance[propertyName];
    }

    override public function setValue(propertyName:String, value:*):void
    {
        if (model_internal::nonDerivedProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " is not a modifiable property of entity Type3DModels");
        }

        model_internal::_instance[propertyName] = value;
    }

    override public function getMappedByProperty(associationProperty:String):String
    {
        switch(associationProperty)
        {
            default:
            {
                return null;
            }
        }
    }

    override public function getPropertyLength(propertyName:String):int
    {
        switch(propertyName)
        {
            default:
            {
                return 0;
            }
        }
    }

    override public function isAvailable(propertyName:String):Boolean
    {
        if (model_internal::allProperties.indexOf(propertyName) == -1)
        {
            throw new Error(propertyName + " does not exist for entity Type3DModels");
        }

        if (model_internal::allAlwaysAvailableProperties.indexOf(propertyName) != -1)
        {
            return true;
        }

        switch(propertyName)
        {
            default:
            {
                return true;
            }
        }
    }

    override public function getIdentityMap():Object
    {
        var returnMap:Object = new Object();
        returnMap["idmodels"] = model_internal::_instance.idmodels;

        return returnMap;
    }

    [Bindable(event="propertyChange")]
    override public function get invalidConstraints():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_invalidConstraints;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_invalidConstraints;        
        }
    }

    [Bindable(event="propertyChange")]
    override public function get validationFailureMessages():Array
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_validationFailureMessages;
        }
    }

    override public function getDependantInvalidConstraints(propertyName:String):Array
    {
        var dependants:Array = getDependants(propertyName);
        if (dependants.length == 0)
        {
            return emptyArray;
        }

        var currentlyInvalid:Array = invalidConstraints;
        if (currentlyInvalid.length == 0)
        {
            return emptyArray;
        }

        var filterFunc:Function = function(element:*, index:int, arr:Array):Boolean
        {
            return dependants.indexOf(element) > -1;
        }

        return currentlyInvalid.filter(filterFunc);
    }

    /**
     * isValid
     */
    [Bindable(event="propertyChange")] 
    public function get isValid() : Boolean
    {
        if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
        {
            return model_internal::_instance.model_internal::_isValid;
        }
        else
        {
            // recalculate isValid
            model_internal::_instance.model_internal::_isValid = model_internal::_instance.model_internal::calculateIsValid();
            return model_internal::_instance.model_internal::_isValid;
        }
    }

    [Bindable(event="propertyChange")]
    public function get isWeightAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSizeZAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSizeYAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isNameAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSTLfileAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isSizeXAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isIdmodelsAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isCostAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isTVAAvailable():Boolean
    {
        return true;
    }

    [Bindable(event="propertyChange")]
    public function get isRRPAvailable():Boolean
    {
        return true;
    }


    /**
     * derived property recalculation
     */
    public function invalidateDependentOnWeight():void
    {
        if (model_internal::_weightIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfWeight = null;
            model_internal::calculateWeightIsValid();
        }
    }
    public function invalidateDependentOnSizeZ():void
    {
        if (model_internal::_sizeZIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSizeZ = null;
            model_internal::calculateSizeZIsValid();
        }
    }
    public function invalidateDependentOnSizeY():void
    {
        if (model_internal::_sizeYIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSizeY = null;
            model_internal::calculateSizeYIsValid();
        }
    }
    public function invalidateDependentOnName():void
    {
        if (model_internal::_nameIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfName = null;
            model_internal::calculateNameIsValid();
        }
    }
    public function invalidateDependentOnSTLfile():void
    {
        if (model_internal::_STLfileIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSTLfile = null;
            model_internal::calculateSTLfileIsValid();
        }
    }
    public function invalidateDependentOnSizeX():void
    {
        if (model_internal::_sizeXIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfSizeX = null;
            model_internal::calculateSizeXIsValid();
        }
    }
    public function invalidateDependentOnCost():void
    {
        if (model_internal::_costIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfCost = null;
            model_internal::calculateCostIsValid();
        }
    }
    public function invalidateDependentOnTVA():void
    {
        if (model_internal::_TVAIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfTVA = null;
            model_internal::calculateTVAIsValid();
        }
    }
    public function invalidateDependentOnRRP():void
    {
        if (model_internal::_RRPIsValidCacheInitialized )
        {
            model_internal::_instance.model_internal::_doValidationCacheOfRRP = null;
            model_internal::calculateRRPIsValid();
        }
    }

    model_internal function fireChangeEvent(propertyName:String, oldValue:Object, newValue:Object):void
    {
        this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, propertyName, oldValue, newValue));
    }

    [Bindable(event="propertyChange")]   
    public function get weightStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get weightValidator() : StyleValidator
    {
        return model_internal::_weightValidator;
    }

    model_internal function set _weightIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_weightIsValid;         
        if (oldValue !== value)
        {
            model_internal::_weightIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "weightIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get weightIsValid():Boolean
    {
        if (!model_internal::_weightIsValidCacheInitialized)
        {
            model_internal::calculateWeightIsValid();
        }

        return model_internal::_weightIsValid;
    }

    model_internal function calculateWeightIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_weightValidator.validate(model_internal::_instance.weight)
        model_internal::_weightIsValid_der = (valRes.results == null);
        model_internal::_weightIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::weightValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::weightValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get weightValidationFailureMessages():Array
    {
        if (model_internal::_weightValidationFailureMessages == null)
            model_internal::calculateWeightIsValid();

        return _weightValidationFailureMessages;
    }

    model_internal function set weightValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_weightValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_weightValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "weightValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get sizeZStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sizeZValidator() : StyleValidator
    {
        return model_internal::_sizeZValidator;
    }

    model_internal function set _sizeZIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sizeZIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sizeZIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sizeZIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sizeZIsValid():Boolean
    {
        if (!model_internal::_sizeZIsValidCacheInitialized)
        {
            model_internal::calculateSizeZIsValid();
        }

        return model_internal::_sizeZIsValid;
    }

    model_internal function calculateSizeZIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sizeZValidator.validate(model_internal::_instance.sizeZ)
        model_internal::_sizeZIsValid_der = (valRes.results == null);
        model_internal::_sizeZIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sizeZValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sizeZValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sizeZValidationFailureMessages():Array
    {
        if (model_internal::_sizeZValidationFailureMessages == null)
            model_internal::calculateSizeZIsValid();

        return _sizeZValidationFailureMessages;
    }

    model_internal function set sizeZValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sizeZValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_sizeZValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sizeZValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get sizeYStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sizeYValidator() : StyleValidator
    {
        return model_internal::_sizeYValidator;
    }

    model_internal function set _sizeYIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sizeYIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sizeYIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sizeYIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sizeYIsValid():Boolean
    {
        if (!model_internal::_sizeYIsValidCacheInitialized)
        {
            model_internal::calculateSizeYIsValid();
        }

        return model_internal::_sizeYIsValid;
    }

    model_internal function calculateSizeYIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sizeYValidator.validate(model_internal::_instance.sizeY)
        model_internal::_sizeYIsValid_der = (valRes.results == null);
        model_internal::_sizeYIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sizeYValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sizeYValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sizeYValidationFailureMessages():Array
    {
        if (model_internal::_sizeYValidationFailureMessages == null)
            model_internal::calculateSizeYIsValid();

        return _sizeYValidationFailureMessages;
    }

    model_internal function set sizeYValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sizeYValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_sizeYValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sizeYValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get nameStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get nameValidator() : StyleValidator
    {
        return model_internal::_nameValidator;
    }

    model_internal function set _nameIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_nameIsValid;         
        if (oldValue !== value)
        {
            model_internal::_nameIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get nameIsValid():Boolean
    {
        if (!model_internal::_nameIsValidCacheInitialized)
        {
            model_internal::calculateNameIsValid();
        }

        return model_internal::_nameIsValid;
    }

    model_internal function calculateNameIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_nameValidator.validate(model_internal::_instance.name)
        model_internal::_nameIsValid_der = (valRes.results == null);
        model_internal::_nameIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::nameValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::nameValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get nameValidationFailureMessages():Array
    {
        if (model_internal::_nameValidationFailureMessages == null)
            model_internal::calculateNameIsValid();

        return _nameValidationFailureMessages;
    }

    model_internal function set nameValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_nameValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_nameValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "nameValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get STLfileStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get STLfileValidator() : StyleValidator
    {
        return model_internal::_STLfileValidator;
    }

    model_internal function set _STLfileIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_STLfileIsValid;         
        if (oldValue !== value)
        {
            model_internal::_STLfileIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "STLfileIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get STLfileIsValid():Boolean
    {
        if (!model_internal::_STLfileIsValidCacheInitialized)
        {
            model_internal::calculateSTLfileIsValid();
        }

        return model_internal::_STLfileIsValid;
    }

    model_internal function calculateSTLfileIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_STLfileValidator.validate(model_internal::_instance.STLfile)
        model_internal::_STLfileIsValid_der = (valRes.results == null);
        model_internal::_STLfileIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::STLfileValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::STLfileValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get STLfileValidationFailureMessages():Array
    {
        if (model_internal::_STLfileValidationFailureMessages == null)
            model_internal::calculateSTLfileIsValid();

        return _STLfileValidationFailureMessages;
    }

    model_internal function set STLfileValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_STLfileValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_STLfileValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "STLfileValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get sizeXStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get sizeXValidator() : StyleValidator
    {
        return model_internal::_sizeXValidator;
    }

    model_internal function set _sizeXIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_sizeXIsValid;         
        if (oldValue !== value)
        {
            model_internal::_sizeXIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sizeXIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get sizeXIsValid():Boolean
    {
        if (!model_internal::_sizeXIsValidCacheInitialized)
        {
            model_internal::calculateSizeXIsValid();
        }

        return model_internal::_sizeXIsValid;
    }

    model_internal function calculateSizeXIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_sizeXValidator.validate(model_internal::_instance.sizeX)
        model_internal::_sizeXIsValid_der = (valRes.results == null);
        model_internal::_sizeXIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::sizeXValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::sizeXValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get sizeXValidationFailureMessages():Array
    {
        if (model_internal::_sizeXValidationFailureMessages == null)
            model_internal::calculateSizeXIsValid();

        return _sizeXValidationFailureMessages;
    }

    model_internal function set sizeXValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_sizeXValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_sizeXValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "sizeXValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get idmodelsStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    [Bindable(event="propertyChange")]   
    public function get costStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get costValidator() : StyleValidator
    {
        return model_internal::_costValidator;
    }

    model_internal function set _costIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_costIsValid;         
        if (oldValue !== value)
        {
            model_internal::_costIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "costIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get costIsValid():Boolean
    {
        if (!model_internal::_costIsValidCacheInitialized)
        {
            model_internal::calculateCostIsValid();
        }

        return model_internal::_costIsValid;
    }

    model_internal function calculateCostIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_costValidator.validate(model_internal::_instance.cost)
        model_internal::_costIsValid_der = (valRes.results == null);
        model_internal::_costIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::costValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::costValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get costValidationFailureMessages():Array
    {
        if (model_internal::_costValidationFailureMessages == null)
            model_internal::calculateCostIsValid();

        return _costValidationFailureMessages;
    }

    model_internal function set costValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_costValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_costValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "costValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get TVAStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get TVAValidator() : StyleValidator
    {
        return model_internal::_TVAValidator;
    }

    model_internal function set _TVAIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_TVAIsValid;         
        if (oldValue !== value)
        {
            model_internal::_TVAIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TVAIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get TVAIsValid():Boolean
    {
        if (!model_internal::_TVAIsValidCacheInitialized)
        {
            model_internal::calculateTVAIsValid();
        }

        return model_internal::_TVAIsValid;
    }

    model_internal function calculateTVAIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_TVAValidator.validate(model_internal::_instance.TVA)
        model_internal::_TVAIsValid_der = (valRes.results == null);
        model_internal::_TVAIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::TVAValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::TVAValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get TVAValidationFailureMessages():Array
    {
        if (model_internal::_TVAValidationFailureMessages == null)
            model_internal::calculateTVAIsValid();

        return _TVAValidationFailureMessages;
    }

    model_internal function set TVAValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_TVAValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_TVAValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "TVAValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }

    [Bindable(event="propertyChange")]   
    public function get RRPStyle():com.adobe.fiber.styles.Style
    {
        return model_internal::_nullStyle;
    }

    public function get RRPValidator() : StyleValidator
    {
        return model_internal::_RRPValidator;
    }

    model_internal function set _RRPIsValid_der(value:Boolean):void 
    {
        var oldValue:Boolean = model_internal::_RRPIsValid;         
        if (oldValue !== value)
        {
            model_internal::_RRPIsValid = value;
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RRPIsValid", oldValue, value));
        }                             
    }

    [Bindable(event="propertyChange")]
    public function get RRPIsValid():Boolean
    {
        if (!model_internal::_RRPIsValidCacheInitialized)
        {
            model_internal::calculateRRPIsValid();
        }

        return model_internal::_RRPIsValid;
    }

    model_internal function calculateRRPIsValid():void
    {
        var valRes:ValidationResultEvent = model_internal::_RRPValidator.validate(model_internal::_instance.RRP)
        model_internal::_RRPIsValid_der = (valRes.results == null);
        model_internal::_RRPIsValidCacheInitialized = true;
        if (valRes.results == null)
             model_internal::RRPValidationFailureMessages_der = emptyArray;
        else
        {
            var _valFailures:Array = new Array();
            for (var a:int = 0 ; a<valRes.results.length ; a++)
            {
                _valFailures.push(valRes.results[a].errorMessage);
            }
            model_internal::RRPValidationFailureMessages_der = _valFailures;
        }
    }

    [Bindable(event="propertyChange")]
    public function get RRPValidationFailureMessages():Array
    {
        if (model_internal::_RRPValidationFailureMessages == null)
            model_internal::calculateRRPIsValid();

        return _RRPValidationFailureMessages;
    }

    model_internal function set RRPValidationFailureMessages_der(value:Array) : void
    {
        var oldValue:Array = model_internal::_RRPValidationFailureMessages;

        var needUpdate : Boolean = false;
        if (oldValue == null)
            needUpdate = true;
    
        // avoid firing the event when old and new value are different empty arrays
        if (!needUpdate && (oldValue !== value && (oldValue.length > 0 || value.length > 0)))
        {
            if (oldValue.length == value.length)
            {
                for (var a:int=0; a < oldValue.length; a++)
                {
                    if (oldValue[a] !== value[a])
                    {
                        needUpdate = true;
                        break;
                    }
                }
            }
            else
            {
                needUpdate = true;
            }
        }

        if (needUpdate)
        {
            model_internal::_RRPValidationFailureMessages = value;   
            this.dispatchEvent(mx.events.PropertyChangeEvent.createUpdateEvent(this, "RRPValidationFailureMessages", oldValue, value));
            // Only execute calculateIsValid if it has been called before, to update the validationFailureMessages for
            // the entire entity.
            if (model_internal::_instance.model_internal::_cacheInitialized_isValid)
            {
                model_internal::_instance.model_internal::isValid_der = model_internal::_instance.model_internal::calculateIsValid();
            }
        }
    }


     /**
     * 
     * @inheritDoc 
     */ 
     override public function getStyle(propertyName:String):com.adobe.fiber.styles.IStyle
     {
         switch(propertyName)
         {
            default:
            {
                return null;
            }
         }
     }
     
     /**
     * 
     * @inheritDoc 
     *  
     */  
     override public function getPropertyValidationFailureMessages(propertyName:String):Array
     {
         switch(propertyName)
         {
            case("weight"):
            {
                return weightValidationFailureMessages;
            }
            case("sizeZ"):
            {
                return sizeZValidationFailureMessages;
            }
            case("sizeY"):
            {
                return sizeYValidationFailureMessages;
            }
            case("name"):
            {
                return nameValidationFailureMessages;
            }
            case("STLfile"):
            {
                return STLfileValidationFailureMessages;
            }
            case("sizeX"):
            {
                return sizeXValidationFailureMessages;
            }
            case("cost"):
            {
                return costValidationFailureMessages;
            }
            case("TVA"):
            {
                return TVAValidationFailureMessages;
            }
            case("RRP"):
            {
                return RRPValidationFailureMessages;
            }
            default:
            {
                return emptyArray;
            }
         }
     }

}

}

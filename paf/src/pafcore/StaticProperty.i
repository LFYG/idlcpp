#import "Metadata.i"
#import "Type.i"

namespace pafcore
{

#{
	struct Attributes;
	class Variant;
	typedef ErrorCode(*StaticPropertyGetter)(Variant* value);
	typedef ErrorCode(*StaticPropertySetter)(Variant* value);
#}

	abstract class(static_property)#PAFCORE_EXPORT StaticProperty : Metadata
	{
		bool hasGetter get;
		bool hasSetter get;

		Type* getterType get;
		bool getterByValue get;
		bool getterByRef get;
		bool getterByPtr get;
		bool getterConstant get;

		Type* setterType get;
		bool setterByValue get;
		bool setterByRef get;
		bool setterByPtr get;
		bool setterConstant get;
#{
	public:
		StaticProperty(const char* name, Attributes* attributes,
			StaticPropertyGetter getter, Type* getterType, Passing getterPassing, bool getterConstant,
			StaticPropertySetter setter, Type* setterType, Passing setterPassing, bool setterConstant);
	public:
		StaticPropertyGetter m_getter;
		StaticPropertySetter m_setter;
		Type* m_getterType;
		Type* m_setterType;
		byte_t m_getterPassing;
		byte_t m_setterPassing;
		bool m_getterConstant;
		bool m_setterConstant;
#}
	};

}
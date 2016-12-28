//DO NOT EDIT THIS FILE, it is generated by idlcpp
//http://www.idlcpp.org

#pragma once

#include "./Type.h"
namespace pafcore{ class Enumerator; }


namespace pafcore
{

	class Variant;
	class InstanceProperty;


	class PAFCORE_EXPORT EnumType : public Type
	{
	public:
		static ::pafcore::ClassType* GetType();
		virtual ::pafcore::ClassType* getType();
		virtual size_t getAddress();

		size_t _getEnumeratorCount_();
		Enumerator* _getEnumerator_(size_t index);
		Enumerator* _getEnumeratorByValue_(int value);
		Enumerator* _getEnumeratorByName_(const char* name);
		Enumerator* get__enumerators_( unsigned int );
		unsigned int size__enumerators_() const;

	public:
		EnumType(const char* name);
	public:
		Enumerator* findEnumerator(const char* name);
		Metadata* findMember(const char* name);
	public:
		static pafcore::ErrorCode Enum_get__name_(pafcore::Variant* that, pafcore::Variant* value);
	public:
		Enumerator* m_enumerators;
		size_t m_enumeratorCount;
		InstanceProperty* m_properties;
		size_t m_propertyCount;

	};
}
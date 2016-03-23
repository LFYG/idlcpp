//DO NOT EDIT THIS FILE, it is generated by idlcpp
//http://www.idlcpp.org

#pragma once

#include "./Type.mh"
#include "./ClassType.mh"
#include "./Metadata.mh"
#include "./Typedef.mh"
#include "InstanceField.mh"
#include "AutoRun.h"
#include "NameSpace.h"
#include "Result.h"
#include "Argument.h"
#include "InstanceField.h"
#include "StaticField.h"
#include "InstanceProperty.h"
#include "StaticProperty.h"
#include "InstanceMethod.h"
#include "StaticMethod.h"
#include "Enumerator.h"
#include "PrimitiveType.h"
#include "NullType.h"


namespace idlcpp
{

	__pafcore__InstanceField_Type::__pafcore__InstanceField_Type() : ::pafcore::ClassType("InstanceField", ::pafcore::instance_field)
	{
		m_size = sizeof(::pafcore::InstanceField);
		static BaseClass s_baseClasses[] =
		{
			{RuntimeTypeOf<::pafcore::Metadata>::RuntimeType::GetSingleton(), base_offset_of(::pafcore::InstanceField, ::pafcore::Metadata)},
		};
		m_baseClasses = s_baseClasses;
		m_baseClassCount = array_size_of(s_baseClasses);
		static ::pafcore::InstanceProperty s_properties[] = 
		{
			::pafcore::InstanceProperty("isArray", GetSingleton(), InstanceField_get_isArray, RuntimeTypeOf<bool>::RuntimeType::GetSingleton(), ::pafcore::Metadata::by_value, false, 0, 0, ::pafcore::Metadata::by_value, false),
			::pafcore::InstanceProperty("isConstant", GetSingleton(), InstanceField_get_isConstant, RuntimeTypeOf<bool>::RuntimeType::GetSingleton(), ::pafcore::Metadata::by_value, false, 0, 0, ::pafcore::Metadata::by_value, false),
			::pafcore::InstanceProperty("objectType", GetSingleton(), InstanceField_get_objectType, RuntimeTypeOf<::pafcore::ClassType>::RuntimeType::GetSingleton(), ::pafcore::Metadata::by_ptr, false, 0, 0, ::pafcore::Metadata::by_value, false),
			::pafcore::InstanceProperty("offset", GetSingleton(), InstanceField_get_offset, RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), ::pafcore::Metadata::by_value, false, 0, 0, ::pafcore::Metadata::by_value, false),
			::pafcore::InstanceProperty("type", GetSingleton(), InstanceField_get_type, RuntimeTypeOf<::pafcore::Type>::RuntimeType::GetSingleton(), ::pafcore::Metadata::by_ptr, false, 0, 0, ::pafcore::Metadata::by_value, false),
		};
		m_properties = s_properties;
		m_propertyCount = array_size_of(s_properties);
		static Metadata* s_members[] = 
		{
			&s_properties[0],
			&s_properties[1],
			&s_properties[2],
			&s_properties[3],
			&s_properties[4],
		};
		m_members = s_members;
		m_memberCount = array_size_of(s_members);
		::pafcore::NameSpace::GetGlobalNameSpace()->getNameSpace("pafcore")->registerMember(this);
	}

	void __pafcore__InstanceField_Type::destroyInstance(void* address)
	{
		reinterpret_cast<::pafcore::Reference*>(address)->release();
	}

	void __pafcore__InstanceField_Type::destroyArray(void* address)
	{
		delete_array(reinterpret_cast<::pafcore::RefCountObject<::pafcore::InstanceField>*>(address));
	}

	void __pafcore__InstanceField_Type::assign(void* dst, const void* src)
	{
		*(::pafcore::InstanceField*)dst = *(const ::pafcore::InstanceField*)src;
	}

	::pafcore::ErrorCode __pafcore__InstanceField_Type::InstanceField_get_isArray(::pafcore::Variant* that, ::pafcore::Variant* value)
	{
		::pafcore::InstanceField* self;
		if(!that->castToReferencePtr(GetSingleton(), (void**)&self))
		{
			return ::pafcore::e_invalid_this_type;
		}
		bool res = self->get_isArray();
		value->assignPrimitive(RuntimeTypeOf<bool>::RuntimeType::GetSingleton(), &res);
		return ::pafcore::s_ok;
	}

	::pafcore::ErrorCode __pafcore__InstanceField_Type::InstanceField_get_isConstant(::pafcore::Variant* that, ::pafcore::Variant* value)
	{
		::pafcore::InstanceField* self;
		if(!that->castToReferencePtr(GetSingleton(), (void**)&self))
		{
			return ::pafcore::e_invalid_this_type;
		}
		bool res = self->get_isConstant();
		value->assignPrimitive(RuntimeTypeOf<bool>::RuntimeType::GetSingleton(), &res);
		return ::pafcore::s_ok;
	}

	::pafcore::ErrorCode __pafcore__InstanceField_Type::InstanceField_get_objectType(::pafcore::Variant* that, ::pafcore::Variant* value)
	{
		::pafcore::InstanceField* self;
		if(!that->castToReferencePtr(GetSingleton(), (void**)&self))
		{
			return ::pafcore::e_invalid_this_type;
		}
		::pafcore::ClassType* res = self->get_objectType();
		value->assignReferencePtr(RuntimeTypeOf<::pafcore::ClassType>::RuntimeType::GetSingleton(), res, false, ::pafcore::Variant::by_ptr);
		return ::pafcore::s_ok;
	}

	::pafcore::ErrorCode __pafcore__InstanceField_Type::InstanceField_get_offset(::pafcore::Variant* that, ::pafcore::Variant* value)
	{
		::pafcore::InstanceField* self;
		if(!that->castToReferencePtr(GetSingleton(), (void**)&self))
		{
			return ::pafcore::e_invalid_this_type;
		}
		::size_t res = self->get_offset();
		value->assignPrimitive(RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), &res);
		return ::pafcore::s_ok;
	}

	::pafcore::ErrorCode __pafcore__InstanceField_Type::InstanceField_get_type(::pafcore::Variant* that, ::pafcore::Variant* value)
	{
		::pafcore::InstanceField* self;
		if(!that->castToReferencePtr(GetSingleton(), (void**)&self))
		{
			return ::pafcore::e_invalid_this_type;
		}
		::pafcore::Type* res = self->get_type();
		value->assignReferencePtr(RuntimeTypeOf<::pafcore::Type>::RuntimeType::GetSingleton(), res, false, ::pafcore::Variant::by_ptr);
		return ::pafcore::s_ok;
	}

	__pafcore__InstanceField_Type* __pafcore__InstanceField_Type::GetSingleton()
	{
		static __pafcore__InstanceField_Type* s_instance = 0;
		static char s_buffer[sizeof(__pafcore__InstanceField_Type)];
		if(0 == s_instance)
		{
			s_instance = (__pafcore__InstanceField_Type*)s_buffer;
			new (s_buffer)__pafcore__InstanceField_Type;
		}
		return s_instance;
	}

}

AUTO_REGISTER_TYPE(::idlcpp::__pafcore__InstanceField_Type)

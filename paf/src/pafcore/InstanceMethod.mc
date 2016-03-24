//DO NOT EDIT THIS FILE, it is generated by idlcpp
//http://www.idlcpp.org

#pragma once

#include "./Metadata.mh"
#include "./Typedef.mh"
#include "./Result.mh"
#include "./Argument.mh"
#include "InstanceMethod.mh"
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

	__pafcore__InstanceMethod_Type::__pafcore__InstanceMethod_Type() : ::pafcore::ClassType("InstanceMethod", ::pafcore::instance_method)
	{
		m_size = sizeof(::pafcore::InstanceMethod);
		static BaseClass s_baseClasses[] =
		{
			{RuntimeTypeOf<::pafcore::Metadata>::RuntimeType::GetSingleton(), base_offset_of(::pafcore::InstanceMethod, ::pafcore::Metadata)},
		};
		m_baseClasses = s_baseClasses;
		m_baseClassCount = array_size_of(s_baseClasses);
		static ::pafcore::InstanceProperty s_properties[] = 
		{
			::pafcore::InstanceProperty("overloadCount", GetSingleton(), InstanceMethod_get_overloadCount, RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), ::pafcore::Metadata::by_value, false, 0, 0, ::pafcore::Metadata::by_value, false),
		};
		m_properties = s_properties;
		m_propertyCount = array_size_of(s_properties);
		static ::pafcore::Result s_getArgument_2_Result(RuntimeTypeOf<::pafcore::Argument>::RuntimeType::GetSingleton(), false, ::pafcore::Result::by_ptr);
		static ::pafcore::Argument s_getArgument_2_Arguments[] = 
		{
			::pafcore::Argument("overloadIndex", RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), ::pafcore::Argument::by_value),
			::pafcore::Argument("index", RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), ::pafcore::Argument::by_value),
		};
		static ::pafcore::Result s_getArgumentCount_1_Result(RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), false, ::pafcore::Result::by_value);
		static ::pafcore::Argument s_getArgumentCount_1_Arguments[] = 
		{
			::pafcore::Argument("overloadIndex", RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), ::pafcore::Argument::by_value),
		};
		static ::pafcore::Result s_getResult_1_Result(RuntimeTypeOf<::pafcore::Result>::RuntimeType::GetSingleton(), false, ::pafcore::Result::by_ptr);
		static ::pafcore::Argument s_getResult_1_Arguments[] = 
		{
			::pafcore::Argument("overloadIndex", RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), ::pafcore::Argument::by_value),
		};
		static ::pafcore::Overload s_getArgument_Overloads[] = 
		{
			::pafcore::Overload(&s_getArgument_2_Result, s_getArgument_2_Arguments, 2),
		};
		static ::pafcore::Overload s_getArgumentCount_Overloads[] = 
		{
			::pafcore::Overload(&s_getArgumentCount_1_Result, s_getArgumentCount_1_Arguments, 1),
		};
		static ::pafcore::Overload s_getResult_Overloads[] = 
		{
			::pafcore::Overload(&s_getResult_1_Result, s_getResult_1_Arguments, 1),
		};
		static ::pafcore::InstanceMethod s_methods[] = 
		{
			::pafcore::InstanceMethod("getArgument", InstanceMethod_getArgument, s_getArgument_Overloads, 1),
			::pafcore::InstanceMethod("getArgumentCount", InstanceMethod_getArgumentCount, s_getArgumentCount_Overloads, 1),
			::pafcore::InstanceMethod("getResult", InstanceMethod_getResult, s_getResult_Overloads, 1),
		};
		m_methods = s_methods;
		m_methodCount = array_size_of(s_methods);
		static Metadata* s_members[] = 
		{
			&s_methods[0],
			&s_methods[1],
			&s_methods[2],
			&s_properties[0],
		};
		m_members = s_members;
		m_memberCount = array_size_of(s_members);
		::pafcore::NameSpace::GetGlobalNameSpace()->getNameSpace("pafcore")->registerMember(this);
	}

	void __pafcore__InstanceMethod_Type::destroyInstance(void* address)
	{
		reinterpret_cast<::pafcore::Reference*>(address)->release();
	}

	void __pafcore__InstanceMethod_Type::destroyArray(void* address)
	{
		delete_array(reinterpret_cast<::pafcore::RefCountObject<::pafcore::InstanceMethod>*>(address));
	}

	void __pafcore__InstanceMethod_Type::assign(void* dst, const void* src)
	{
		*(::pafcore::InstanceMethod*)dst = *(const ::pafcore::InstanceMethod*)src;
	}

	::pafcore::ErrorCode __pafcore__InstanceMethod_Type::InstanceMethod_get_overloadCount(::pafcore::Variant* that, ::pafcore::Variant* value)
	{
		::pafcore::InstanceMethod* self;
		if(!that->castToReferencePtr(GetSingleton(), (void**)&self))
		{
			return ::pafcore::e_invalid_this_type;
		}
		::size_t res = self->get_overloadCount();
		value->assignPrimitive(RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), &res);
		return ::pafcore::s_ok;
	}

	::pafcore::ErrorCode __pafcore__InstanceMethod_Type::InstanceMethod_getArgument(::pafcore::Variant* result, ::pafcore::Variant** args, int_t numArgs)
	{
		if(3 == numArgs)
		{
			if(args[0]->isConstant())
			{
				return ::pafcore::e_this_is_constant;
			}
			::pafcore::InstanceMethod* self;
			if(!args[0]->castToReferencePtr(GetSingleton(), (void**)&self))
			{
				return ::pafcore::e_invalid_this_type;
			}
			::size_t a0;
			if(!args[1]->castToPrimitive(RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), &a0))
			{
				return ::pafcore::e_invalid_arg_type_1;
			}
			::size_t a1;
			if(!args[2]->castToPrimitive(RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), &a1))
			{
				return ::pafcore::e_invalid_arg_type_2;
			}
			::pafcore::Argument* res = self->getArgument(a0, a1);
			result->assignReferencePtr(RuntimeTypeOf<::pafcore::Argument>::RuntimeType::GetSingleton(), res, false, ::pafcore::Variant::by_ptr);
			return ::pafcore::s_ok;
		}
		return ::pafcore::e_invalid_arg_num;
	}

	::pafcore::ErrorCode __pafcore__InstanceMethod_Type::InstanceMethod_getArgumentCount(::pafcore::Variant* result, ::pafcore::Variant** args, int_t numArgs)
	{
		if(2 == numArgs)
		{
			if(args[0]->isConstant())
			{
				return ::pafcore::e_this_is_constant;
			}
			::pafcore::InstanceMethod* self;
			if(!args[0]->castToReferencePtr(GetSingleton(), (void**)&self))
			{
				return ::pafcore::e_invalid_this_type;
			}
			::size_t a0;
			if(!args[1]->castToPrimitive(RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), &a0))
			{
				return ::pafcore::e_invalid_arg_type_1;
			}
			::size_t res = self->getArgumentCount(a0);
			result->assignPrimitive(RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), &res);
			return ::pafcore::s_ok;
		}
		return ::pafcore::e_invalid_arg_num;
	}

	::pafcore::ErrorCode __pafcore__InstanceMethod_Type::InstanceMethod_getResult(::pafcore::Variant* result, ::pafcore::Variant** args, int_t numArgs)
	{
		if(2 == numArgs)
		{
			if(args[0]->isConstant())
			{
				return ::pafcore::e_this_is_constant;
			}
			::pafcore::InstanceMethod* self;
			if(!args[0]->castToReferencePtr(GetSingleton(), (void**)&self))
			{
				return ::pafcore::e_invalid_this_type;
			}
			::size_t a0;
			if(!args[1]->castToPrimitive(RuntimeTypeOf<::size_t>::RuntimeType::GetSingleton(), &a0))
			{
				return ::pafcore::e_invalid_arg_type_1;
			}
			::pafcore::Result* res = self->getResult(a0);
			result->assignReferencePtr(RuntimeTypeOf<::pafcore::Result>::RuntimeType::GetSingleton(), res, false, ::pafcore::Variant::by_ptr);
			return ::pafcore::s_ok;
		}
		return ::pafcore::e_invalid_arg_num;
	}

	__pafcore__InstanceMethod_Type* __pafcore__InstanceMethod_Type::GetSingleton()
	{
		static __pafcore__InstanceMethod_Type* s_instance = 0;
		static char s_buffer[sizeof(__pafcore__InstanceMethod_Type)];
		if(0 == s_instance)
		{
			s_instance = (__pafcore__InstanceMethod_Type*)s_buffer;
			new (s_buffer)__pafcore__InstanceMethod_Type;
		}
		return s_instance;
	}

}

AUTO_REGISTER_TYPE(::idlcpp::__pafcore__InstanceMethod_Type)

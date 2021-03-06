#pragma once

#include "MemberNode.h"

struct GetterSetterNode;
struct TypeNameNode;

struct PropertyNode : MemberNode
{
	TokenNode* m_modifier;
	TokenNode* m_constant;
	TypeNameNode* m_typeName;
	TokenNode* m_passing;//PTR or REF
	GetterSetterNode* m_get;
	GetterSetterNode* m_set;
	PropertyArrayCategory m_arrayCategory;
public:
	PropertyNode(IdentifyNode* name, PropertyArrayCategory category);
	bool isStatic();
	bool isVirtual();
	bool isAbstract();
	bool isNotArray();
	bool isArray();
	bool isFixedArray();
	bool isDynamicArray();
	bool byPtr();
	void setGetter(GetterSetterNode* getter);
	void setSetter(GetterSetterNode* setter);
	virtual void checkTypeNames(TypeNode* enclosingTypeNode, TemplateArguments* templateArguments);
	virtual void checkSemantic(TemplateArguments* templateArguments);
};
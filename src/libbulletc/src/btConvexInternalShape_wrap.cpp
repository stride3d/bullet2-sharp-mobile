#include "conversion.h"
#include "btConvexInternalShape_wrap.h"

void btConvexInternalShape_getImplicitShapeDimensions(btConvexInternalShape* obj, btScalar* value)
{
	VECTOR3_OUT(&obj->getImplicitShapeDimensions(), value);
}

void btConvexInternalShape_getLocalScalingNV(btConvexInternalShape* obj, btScalar* value)
{
	VECTOR3_OUT(&obj->getLocalScalingNV(), value);
}

btScalar btConvexInternalShape_getMarginNV(btConvexInternalShape* obj)
{
	return obj->getMarginNV();
}

void btConvexInternalShape_setImplicitShapeDimensions(btConvexInternalShape* obj, btScalar* dimensions)
{
	VECTOR3_CONV(dimensions);
	obj->setImplicitShapeDimensions(VECTOR3_USE(dimensions));
}

void btConvexInternalShape_setSafeMargin(btConvexInternalShape* obj, btScalar minDimension, btScalar defaultMarginMultiplier)
{
	obj->setSafeMargin(minDimension, defaultMarginMultiplier);
}

void btConvexInternalShape_setSafeMargin2(btConvexInternalShape* obj, btScalar minDimension)
{
	obj->setSafeMargin(minDimension);
}

void btConvexInternalShape_setSafeMargin3(btConvexInternalShape* obj, btScalar* halfExtents, btScalar defaultMarginMultiplier)
{
	VECTOR3_CONV(halfExtents);
	obj->setSafeMargin(VECTOR3_USE(halfExtents), defaultMarginMultiplier);
}

void btConvexInternalShape_setSafeMargin4(btConvexInternalShape* obj, btScalar* halfExtents)
{
	VECTOR3_CONV(halfExtents);
	obj->setSafeMargin(VECTOR3_USE(halfExtents));
}

void btConvexInternalAabbCachingShape_recalcLocalAabb(btConvexInternalAabbCachingShape* obj)
{
	obj->recalcLocalAabb();
}

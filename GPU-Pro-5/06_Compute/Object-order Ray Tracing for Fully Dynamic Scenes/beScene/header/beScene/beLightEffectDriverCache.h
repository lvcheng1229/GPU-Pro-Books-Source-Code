/****************************************************/
/* breeze Engine Scene Module  (c) Tobias Zirr 2011 */
/****************************************************/

#pragma once
#ifndef BE_SCENE_LIGHT_EFFECT_DRIVER_CACHE
#define BE_SCENE_LIGHT_EFFECT_DRIVER_CACHE

#include "beScene.h"
#include "beGenericEffectDriverCache.h"
#include "beAbstractLightEffectDriver.h"

namespace beScene
{

// Prototypes
class RenderingPipeline;
class PerspectiveEffectBinderPool;

/// Effect binder cache implementation.
class LightEffectDriverCache : public DefaultEffectDriverCache<AbstractLightEffectDriver>
{
protected:
	RenderingPipeline *const m_pipeline;		///< Rendering pipeline.
	PerspectiveEffectBinderPool *const m_pool;	///< Effect binder pool.

	/// Creates an effect binder from the given effect.
	BE_SCENE_API lean::resource_ptr<EffectDriver, lean::critical_ref> CreateEffectBinder(const beGraphics::Technique &technique, uint4 flags) const;

public:
	/// Constructor.
	BE_SCENE_API LightEffectDriverCache(RenderingPipeline *pipeline, PerspectiveEffectBinderPool *pool)
		: m_pipeline( LEAN_ASSERT_NOT_NULL(pipeline) ),
		m_pool( LEAN_ASSERT_NOT_NULL(pool) ) { }
	/// Destructor.
	BE_SCENE_API ~LightEffectDriverCache() { }
};

} // namespace

#endif
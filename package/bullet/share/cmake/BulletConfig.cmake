get_filename_component(_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
set (BULLET_INCLUDE_DIRS "${_PREFIX}/include")

set(BULLET_DYNAMICS_LIBRARY
  debug
    "${_PREFIX}/lib/Bullet3Dynamics_Debug.dll"
    "${_PREFIX}/lib/Bullet3Dynamics_Debug.lib"
    "${_PREFIX}/lib/BulletDynamics_Debug.dll"
    "${_PREFIX}/lib/BulletDynamics_Debug.lib"
    "${_PREFIX}/lib/BulletInverseDynamics_Debug.dll"
    "${_PREFIX}/lib/BulletInverseDynamics_Debug.lib"
  optimized
    "${_PREFIX}/lib/Bullet3Dynamics.dll"
    "${_PREFIX}/lib/BulletDynamics.dll"
    "${_PREFIX}/lib/BulletDynamics.lib"
    "${_PREFIX}/lib/BulletInverseDynamics.dll"
    "${_PREFIX}/lib/BulletInverseDynamics.lib"
)

set(BULLET_COLLISION_LIBRARY
  debug
    "${_PREFIX}/lib/Bullet3Collision_Debug.dll"
    "${_PREFIX}/lib/Bullet3Collision_Debug.lib"
    "${_PREFIX}/lib/BulletCollision_Debug.dll"
    "${_PREFIX}/lib/BulletCollision_Debug.lib"
  optimized
    "${_PREFIX}/lib/Bullet3Collision.dll"
    "${_PREFIX}/lib/Bullet3Collision.lib"
    "${_PREFIX}/lib/BulletCollision.dll"
    "${_PREFIX}/lib/BulletCollision.lib"
)

set(BULLET_MATH_LIBRARY
  debug
    "${_PREFIX}/lib/LinearMath_Debug.dll"
    "${_PREFIX}/lib/LinearMath_Debug.lib"
  optimized
    "${_PREFIX}/lib/LinearMath.dll"
    "${_PREFIX}/lib/LinearMath.lib"
)

set(BULLET_SOFTBODY_LIBRARY
  debug
    "${_PREFIX}/lib/BulletSoftBody_Debug.dll"
    "${_PREFIX}/lib/BulletSoftBody_Debug.lib"
  optimized
    "${_PREFIX}/lib/BulletSoftBody.dll"
    "${_PREFIX}/lib/BulletSoftBody.lib"
)

set (BULLET_LIBRARIES
  debug
    "${_PREFIX}/lib/Bullet2FileLoader_Debug.dll"
    "${_PREFIX}/lib/Bullet2FileLoader_Debug.lib"

    "${_PREFIX}/lib/Bullet3Common_Debug.dll"
    "${_PREFIX}/lib/Bullet3Common_Debug.lib"
    "${_PREFIX}/lib/Bullet3Geometry_Debug.dll"
    "${_PREFIX}/lib/Bullet3Geometry_Debug.lib"
    "${_PREFIX}/lib/Bullet3OpenCL_clew_Debug.dll"
    "${_PREFIX}/lib/Bullet3OpenCL_clew_Debug.lib"
  optimized
    "${_PREFIX}/lib/Bullet2FileLoader.dll"
    "${_PREFIX}/lib/Bullet2FileLoader.lib"
    "${_PREFIX}/lib/Bullet3Common.dll"
    "${_PREFIX}/lib/Bullet3Common.lib"
    "${_PREFIX}/lib/Bullet3Geometry.dll"
    "${_PREFIX}/lib/Bullet3Geometry.lib"
    "${_PREFIX}/lib/Bullet3OpenCL_clew.dll"
    "${_PREFIX}/lib/Bullet3OpenCL_clew.lib"
)

set (BULLET_INCLUDE_DIR "${BULLET_INCLUDE_DIRS}")
set (BULLET_INCLUDE_DIRS "${BULLET_INCLUDE_DIRS}")
set (BULLET_INCLUDE_DIR "${BULLET_INCLUDE_DIRS}")
set (BULLET_LIBRARY "${BULLET_LIBRARIES}")
set (BULLET_LIBRARIES "${BULLET_LIBRARIES}")
set (BULLET_LIBRARY "${BULLET_LIBRARIES}")

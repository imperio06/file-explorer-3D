TEMPLATE = app
CONFIG -= console
CONFIG -= qt

INCLUDEPATH += objects/
INCLUDEPATH += Bullet/
INCLUDEPATH += SDL2/
INCLUDEPATH += include/

unix {
    QMAKE_CXXFLAGS += -std=c++0x

    LIBS += -lGLU -lSDL2 -lSDL2_gfx -lSDL2_image -lSDL2_ttf -lGLEW -lm -lpthread \
}

win32 {
    CONFIG += c++11
    DEFINES += WIN32
    SOURCES +=  glew.c \

    DEFINES += GLEW_STATIC _USE_MATH_DEFINES

    LIBS += -L./SDL2/ \
            -L./ \
            -lwinmm \
            -lmingw32 \
            -luser32 \
            -lGdi32 \
            -lComctl32 \
            -lOleAut32 \
            -lOle32 \
            -luuid \
            -lSDL2main \
            -lSDL2 \
            -lSDL2_gfx \
            -lSDL2_ttf \
            -lSDL2_image \
            -lopengl32 \
            -lglu32 \
}

SOURCES += main.cpp \
    HandleSDL.cpp \
    MyWindow.cpp \
    Camera.cpp \
    myGLWidget.cpp \
    objects/Vector3D.cpp \
    objects/Color.cpp \
    objects/Cube.cpp \
    objects/Cylinder.cpp \
    KeyHandler.cpp \
    Loader/Loader.cpp \
    objects/Plane.cpp \
    objects/Rectangle.cpp \
    objects/Rotation.cpp \
    objects/SkyBox.cpp \
    objects/Sphere.cpp \
    Utils/HandleThread.cpp \
    Utils/HandleMutex.cpp \
    Utils/MyMutexLocker.cpp \
    Utils/MyException.cpp \
    Loader/LoadingMenu.cpp \
    HandleError.cpp \
    objects/Room.cpp \
    Utils/Utils.cpp \
    Utils/Directory.cpp \
    objects/Door.cpp \
    objects/Text.cpp \
    Utils/HandleFile.cpp \
    HandleFpsCount.cpp \
    objects/TextureHandler.cpp \
    objects/Wall.cpp \
    objects/GraphicFile.cpp \
    objects/VertexBuffer.cpp \
    shaders/Shader.cpp \
    objects/Box.cpp \
    VertexContainer.cpp \
    Texture.cpp \
    FrameBuffer.cpp \
    objects/Button.cpp \
    DataHandler.cpp \
    Tetris.cpp \
    objects/Model.cpp \
    objects/Line.cpp \
    HandlePhysics.cpp \
\
    Bullet/BulletCollision/BroadphaseCollision/btAxisSweep3.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btBroadphaseProxy.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btDbvt.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btDbvtBroadphase.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btDispatcher.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btOverlappingPairCache.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btQuantizedBvh.cpp \
    Bullet/BulletCollision/BroadphaseCollision/btSimpleBroadphase.cpp \
    Bullet/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btBoxBoxDetector.cpp \
    Bullet/BulletCollision/CollisionDispatch/btCollisionDispatcher.cpp \
    Bullet/BulletCollision/CollisionDispatch/btCollisionObject.cpp \
    Bullet/BulletCollision/CollisionDispatch/btCollisionWorld.cpp \
    Bullet/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btCompoundCompoundCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.cpp \
    Bullet/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btGhostObject.cpp \
    Bullet/BulletCollision/CollisionDispatch/btHashedSimplePairCache.cpp \
    Bullet/BulletCollision/CollisionDispatch/btInternalEdgeUtility.cpp \
    Bullet/BulletCollision/CollisionDispatch/btManifoldResult.cpp \
    Bullet/BulletCollision/CollisionDispatch/btSimulationIslandManager.cpp \
    Bullet/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.cpp \
    Bullet/BulletCollision/CollisionDispatch/btUnionFind.cpp \
    Bullet/BulletCollision/CollisionDispatch/SphereTriangleDetector.cpp \
    Bullet/BulletCollision/CollisionShapes/btBox2dShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btBoxShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btCapsuleShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btCollisionShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btCompoundShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btConcaveShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btConeShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btConvex2dShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btConvexHullShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btConvexInternalShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btConvexPointCloudShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btConvexPolyhedron.cpp \
    Bullet/BulletCollision/CollisionShapes/btConvexShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btCylinderShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btEmptyShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btMinkowskiSumShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btMultiSphereShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btOptimizedBvh.cpp \
    Bullet/BulletCollision/CollisionShapes/btPolyhedralConvexShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btShapeHull.cpp \
    Bullet/BulletCollision/CollisionShapes/btSphereShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btStaticPlaneShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btStridingMeshInterface.cpp \
    Bullet/BulletCollision/CollisionShapes/btTetrahedronShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btTriangleBuffer.cpp \
    Bullet/BulletCollision/CollisionShapes/btTriangleCallback.cpp \
    Bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.cpp \
    Bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.cpp \
    Bullet/BulletCollision/CollisionShapes/btTriangleMesh.cpp \
    Bullet/BulletCollision/CollisionShapes/btTriangleMeshShape.cpp \
    Bullet/BulletCollision/CollisionShapes/btUniformScalingShape.cpp \
    Bullet/BulletCollision/Gimpact/btContactProcessing.cpp \
    Bullet/BulletCollision/Gimpact/btGenericPoolAllocator.cpp \
    Bullet/BulletCollision/Gimpact/btGImpactBvh.cpp \
    Bullet/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.cpp \
    Bullet/BulletCollision/Gimpact/btGImpactQuantizedBvh.cpp \
    Bullet/BulletCollision/Gimpact/btGImpactShape.cpp \
    Bullet/BulletCollision/Gimpact/btTriangleShapeEx.cpp \
    Bullet/BulletCollision/Gimpact/gim_box_set.cpp \
    Bullet/BulletCollision/Gimpact/gim_contact.cpp \
    Bullet/BulletCollision/Gimpact/gim_memory.cpp \
    Bullet/BulletCollision/Gimpact/gim_tri_collision.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btConvexCast.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btGjkEpa2.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btPersistentManifold.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btRaycastCallback.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.cpp \
    Bullet/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.cpp \
    Bullet/BulletDynamics/Character/btKinematicCharacterController.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btConeTwistConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btContactConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btFixedConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btGearConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btHinge2Constraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btHingeConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btSliderConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btTypedConstraint.cpp \
    Bullet/BulletDynamics/ConstraintSolver/btUniversalConstraint.cpp \
    Bullet/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.cpp \
    Bullet/BulletDynamics/Dynamics/btRigidBody.cpp \
    Bullet/BulletDynamics/Dynamics/btSimpleDynamicsWorld.cpp \
    Bullet/BulletDynamics/Dynamics/Bullet-C-API.cpp \
    Bullet/BulletDynamics/Vehicle/btRaycastVehicle.cpp \
    Bullet/BulletDynamics/Vehicle/btWheelInfo.cpp \
    Bullet/BulletDynamics/Featherstone/btMultiBody.cpp \
    Bullet/BulletDynamics/Featherstone/btMultiBodyConstraint.cpp \
    Bullet/BulletDynamics/Featherstone/btMultiBodyConstraintSolver.cpp \
    Bullet/BulletDynamics/Featherstone/btMultiBodyDynamicsWorld.cpp \
    Bullet/BulletDynamics/Featherstone/btMultiBodyJointLimitConstraint.cpp \
    Bullet/BulletDynamics/Featherstone/btMultiBodyJointMotor.cpp \
    Bullet/BulletDynamics/Featherstone/btMultiBodyPoint2Point.cpp \
    Bullet/BulletDynamics/MLCPSolvers/btDantzigLCP.cpp \
    Bullet/BulletDynamics/MLCPSolvers/btMLCPSolver.cpp \
    Bullet/LinearMath/btSerializer.cpp \
    Bullet/LinearMath/btQuickprof.cpp \
    Bullet/LinearMath/btGeometryUtil.cpp \
    Bullet/LinearMath/btConvexHull.cpp \
    Bullet/LinearMath/btConvexHullComputer.cpp \
    Bullet/LinearMath/btAlignedAllocator.cpp \

HEADERS += \
    HandleSDL.hpp \
    MyWindow.hpp \
    Camera.hpp \
    myGLWidget.hpp \
    objects/Vector3D.hpp \
    objects/Color.hpp \
    objects/Cube.hpp \
    objects/Cylinder.hpp \
    KeyHandler.hpp \
    Loader/Loader.hpp \
    Loader/ObjectFactory.hpp \
    objects/Rectangle.hpp \
    objects/Rotation.hpp \
    objects/SkyBox.hpp \
    objects/Sphere.hpp \
    Utils/HandleThread.hpp \
    Utils/HandleMutex.hpp \
    Utils/MyMutexLocker.hpp \
    Utils/MyException.hpp \
    Loader/LoadingMenu.hpp \
    String_utils.hpp \
    HandleError.hpp \
    objects/Room.hpp \
    Utils/Utils.hpp \
    Utils/Directory.hpp \
    objects/Door.hpp \
    objects/Text.hpp \
    Utils/HandleFile.hpp \
    HandleFpsCount.hpp \
    objects/TextureHandler.hpp \
    objects/Wall.hpp \
    objects/Plane.hpp \
    objects/GraphicFile.hpp \
    objects/VertexBuffer.hpp \
    shaders/Shader.hpp \
    objects/Box.hpp \
    VertexContainer.hpp \
    Texture.hpp \
    FrameBuffer.hpp \
    objects/Button.hpp \
    DataHandler.hpp \
    Tetris.hpp \
    objects/Model.hpp \
    objects/Line.hpp \
    HandlePhysics.hpp \
\
    Bullet/BulletCollision/BroadphaseCollision/btAxisSweep3.h \
    Bullet/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h \
    Bullet/BulletCollision/BroadphaseCollision/btBroadphaseProxy.h \
    Bullet/BulletCollision/BroadphaseCollision/btCollisionAlgorithm.h \
    Bullet/BulletCollision/BroadphaseCollision/btDbvt.h \
    Bullet/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h \
    Bullet/BulletCollision/BroadphaseCollision/btDispatcher.h \
    Bullet/BulletCollision/BroadphaseCollision/btMultiSapBroadphase.h \
    Bullet/BulletCollision/BroadphaseCollision/btOverlappingPairCache.h \
    Bullet/BulletCollision/BroadphaseCollision/btOverlappingPairCallback.h \
    Bullet/BulletCollision/BroadphaseCollision/btQuantizedBvh.h \
    Bullet/BulletCollision/BroadphaseCollision/btSimpleBroadphase.h \
    Bullet/BulletCollision/CollisionDispatch/btActivatingCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btBox2dBox2dCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btBoxBoxCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btBoxBoxDetector.h \
    Bullet/BulletCollision/CollisionDispatch/btCollisionConfiguration.h \
    Bullet/BulletCollision/CollisionDispatch/btCollisionCreateFunc.h \
    Bullet/BulletCollision/CollisionDispatch/btCollisionDispatcher.h \
    Bullet/BulletCollision/CollisionDispatch/btCollisionObject.h \
    Bullet/BulletCollision/CollisionDispatch/btCollisionObjectWrapper.h \
    Bullet/BulletCollision/CollisionDispatch/btCollisionWorld.h \
    Bullet/BulletCollision/CollisionDispatch/btCompoundCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btCompoundCompoundCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btConvex2dConvex2dAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btConvexConcaveCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btConvexConvexAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btConvexPlaneCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h \
    Bullet/BulletCollision/CollisionDispatch/btEmptyCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btGhostObject.h \
    Bullet/BulletCollision/CollisionDispatch/btHashedSimplePairCache.h \
    Bullet/BulletCollision/CollisionDispatch/btInternalEdgeUtility.h \
    Bullet/BulletCollision/CollisionDispatch/btManifoldResult.h \
    Bullet/BulletCollision/CollisionDispatch/btSimulationIslandManager.h \
    Bullet/BulletCollision/CollisionDispatch/btSphereBoxCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btSphereSphereCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btSphereTriangleCollisionAlgorithm.h \
    Bullet/BulletCollision/CollisionDispatch/btUnionFind.h \
    Bullet/BulletCollision/CollisionDispatch/SphereTriangleDetector.h \
    Bullet/BulletCollision/CollisionShapes/btBox2dShape.h \
    Bullet/BulletCollision/CollisionShapes/btBoxShape.h \
    Bullet/BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h \
    Bullet/BulletCollision/CollisionShapes/btCapsuleShape.h \
    Bullet/BulletCollision/CollisionShapes/btCollisionMargin.h \
    Bullet/BulletCollision/CollisionShapes/btCollisionShape.h \
    Bullet/BulletCollision/CollisionShapes/btCompoundShape.h \
    Bullet/BulletCollision/CollisionShapes/btConcaveShape.h \
    Bullet/BulletCollision/CollisionShapes/btConeShape.h \
    Bullet/BulletCollision/CollisionShapes/btConvex2dShape.h \
    Bullet/BulletCollision/CollisionShapes/btConvexHullShape.h \
    Bullet/BulletCollision/CollisionShapes/btConvexInternalShape.h \
    Bullet/BulletCollision/CollisionShapes/btConvexPointCloudShape.h \
    Bullet/BulletCollision/CollisionShapes/btConvexPolyhedron.h \
    Bullet/BulletCollision/CollisionShapes/btConvexShape.h \
    Bullet/BulletCollision/CollisionShapes/btConvexTriangleMeshShape.h \
    Bullet/BulletCollision/CollisionShapes/btCylinderShape.h \
    Bullet/BulletCollision/CollisionShapes/btEmptyShape.h \
    Bullet/BulletCollision/CollisionShapes/btHeightfieldTerrainShape.h \
    Bullet/BulletCollision/CollisionShapes/btMaterial.h \
    Bullet/BulletCollision/CollisionShapes/btMinkowskiSumShape.h \
    Bullet/BulletCollision/CollisionShapes/btMultimaterialTriangleMeshShape.h \
    Bullet/BulletCollision/CollisionShapes/btMultiSphereShape.h \
    Bullet/BulletCollision/CollisionShapes/btOptimizedBvh.h \
    Bullet/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h \
    Bullet/BulletCollision/CollisionShapes/btScaledBvhTriangleMeshShape.h \
    Bullet/BulletCollision/CollisionShapes/btShapeHull.h \
    Bullet/BulletCollision/CollisionShapes/btSphereShape.h \
    Bullet/BulletCollision/CollisionShapes/btStaticPlaneShape.h \
    Bullet/BulletCollision/CollisionShapes/btStridingMeshInterface.h \
    Bullet/BulletCollision/CollisionShapes/btTetrahedronShape.h \
    Bullet/BulletCollision/CollisionShapes/btTriangleBuffer.h \
    Bullet/BulletCollision/CollisionShapes/btTriangleCallback.h \
    Bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h \
    Bullet/BulletCollision/CollisionShapes/btTriangleIndexVertexMaterialArray.h \
    Bullet/BulletCollision/CollisionShapes/btTriangleInfoMap.h \
    Bullet/BulletCollision/CollisionShapes/btTriangleMesh.h \
    Bullet/BulletCollision/CollisionShapes/btTriangleMeshShape.h \
    Bullet/BulletCollision/CollisionShapes/btTriangleShape.h \
    Bullet/BulletCollision/CollisionShapes/btUniformScalingShape.h \
    Bullet/BulletCollision/Gimpact/btBoxCollision.h \
    Bullet/BulletCollision/Gimpact/btClipPolygon.h \
    Bullet/BulletCollision/Gimpact/btCompoundFromGimpact.h \
    Bullet/BulletCollision/Gimpact/btContactProcessing.h \
    Bullet/BulletCollision/Gimpact/btGenericPoolAllocator.h \
    Bullet/BulletCollision/Gimpact/btGeometryOperations.h \
    Bullet/BulletCollision/Gimpact/btGImpactBvh.h \
    Bullet/BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h \
    Bullet/BulletCollision/Gimpact/btGImpactMassUtil.h \
    Bullet/BulletCollision/Gimpact/btGImpactQuantizedBvh.h \
    Bullet/BulletCollision/Gimpact/btGImpactShape.h \
    Bullet/BulletCollision/Gimpact/btQuantization.h \
    Bullet/BulletCollision/Gimpact/btTriangleShapeEx.h \
    Bullet/BulletCollision/Gimpact/gim_array.h \
    Bullet/BulletCollision/Gimpact/gim_basic_geometry_operations.h \
    Bullet/BulletCollision/Gimpact/gim_bitset.h \
    Bullet/BulletCollision/Gimpact/gim_box_collision.h \
    Bullet/BulletCollision/Gimpact/gim_box_set.h \
    Bullet/BulletCollision/Gimpact/gim_clip_polygon.h \
    Bullet/BulletCollision/Gimpact/gim_contact.h \
    Bullet/BulletCollision/Gimpact/gim_geom_types.h \
    Bullet/BulletCollision/Gimpact/gim_geometry.h \
    Bullet/BulletCollision/Gimpact/gim_hash_table.h \
    Bullet/BulletCollision/Gimpact/gim_linear_math.h \
    Bullet/BulletCollision/Gimpact/gim_math.h \
    Bullet/BulletCollision/Gimpact/gim_memory.h \
    Bullet/BulletCollision/Gimpact/gim_radixsort.h \
    Bullet/BulletCollision/Gimpact/gim_tri_collision.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btContinuousConvexCollision.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btConvexCast.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btConvexPenetrationDepthSolver.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btDiscreteCollisionDetectorInterface.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btGjkConvexCast.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btGjkEpa2.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btGjkEpaPenetrationDepthSolver.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btGjkPairDetector.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btManifoldPoint.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btMinkowskiPenetrationDepthSolver.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btPersistentManifold.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btPointCollector.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btPolyhedralContactClipping.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btRaycastCallback.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btSimplexSolverInterface.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btSubSimplexConvexCast.h \
    Bullet/BulletCollision/NarrowPhaseCollision/btVoronoiSimplexSolver.h \
    Bullet/BulletDynamics/Character/btCharacterControllerInterface.h \
    Bullet/BulletDynamics/Character/btKinematicCharacterController.h \
    Bullet/BulletDynamics/ConstraintSolver/btConeTwistConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btConstraintSolver.h \
    Bullet/BulletDynamics/ConstraintSolver/btContactConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btContactSolverInfo.h \
    Bullet/BulletDynamics/ConstraintSolver/btFixedConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btGearConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btGeneric6DofSpringConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btHinge2Constraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btHingeConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btJacobianEntry.h \
    Bullet/BulletDynamics/ConstraintSolver/btPoint2PointConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h \
    Bullet/BulletDynamics/ConstraintSolver/btSliderConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btSolve2LinearConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btSolverBody.h \
    Bullet/BulletDynamics/ConstraintSolver/btSolverConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btTypedConstraint.h \
    Bullet/BulletDynamics/ConstraintSolver/btUniversalConstraint.h \
    Bullet/BulletDynamics/Dynamics/btActionInterface.h \
    Bullet/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h \
    Bullet/BulletDynamics/Dynamics/btDynamicsWorld.h \
    Bullet/BulletDynamics/Dynamics/btRigidBody.h \
    Bullet/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h \
    Bullet/BulletDynamics/Vehicle/btWheelInfo.h \
    Bullet/BulletDynamics/Vehicle/btRaycastVehicle.h \
    Bullet/BulletDynamics/Vehicle/btVehicleRaycaster.h \
    Bullet/BulletDynamics/Featherstone/btMultiBody.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyConstraint.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyConstraintSolver.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyDynamicsWorld.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyJointLimitConstraint.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyJointMotor.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyLink.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyLinkCollider.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyPoint2Point.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodySolverConstraint.h \
    Bullet/BulletDynamics/Featherstone/btMultiBody.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyConstraint.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyConstraintSolver.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyDynamicsWorld.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyJointLimitConstraint.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyJointMotor.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyLink.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyLinkCollider.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodyPoint2Point.h \
    Bullet/BulletDynamics/Featherstone/btMultiBodySolverConstraint.h \
    Bullet/LinearMath/btVector3.h \
    Bullet/LinearMath/btTransformUtil.h \
    Bullet/LinearMath/btTransform.h \
    Bullet/LinearMath/btStackAlloc.h \
    Bullet/LinearMath/btSerializer.h \
    Bullet/LinearMath/btScalar.h \
    Bullet/LinearMath/btRandom.h \
    Bullet/LinearMath/btQuickprof.h \
    Bullet/LinearMath/btQuaternion.h \
    Bullet/LinearMath/btQuadWord.h \
    Bullet/LinearMath/btPoolAllocator.h \
    Bullet/LinearMath/btMotionState.h \
    Bullet/LinearMath/btMinMax.h \
    Bullet/LinearMath/btMatrix3x3.h \
    Bullet/LinearMath/btList.h \
    Bullet/LinearMath/btIDebugDraw.h \
    Bullet/LinearMath/btHashMap.h \
    Bullet/LinearMath/btGeometryUtil.h \
    Bullet/LinearMath/btDefaultMotionState.h \
    Bullet/LinearMath/btConvexHull.h \
    Bullet/LinearMath/btAlignedObjectArray.h \
    Bullet/LinearMath/btAlignedAllocator.h \
    Bullet/LinearMath/btAabbUtil2.h

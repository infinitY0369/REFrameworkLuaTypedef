---@meta


---
---Contains some utility functions and callback creators.
---
---[View documents](https://cursey.github.io/reframework-book/api/re.html)
---
---@class re
re = {}


---
---Creates a MessageBox with `text`. Note that this will pause game execution until the user presses OK.
---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#remsgtext)
---
---@param text string
---@return nil
function re.msg(text) end

---@alias ModuleEntry
---| '"Initialize"'
---| '"InitializeLog"'
---| '"InitializeGameCore"'
---| '"InitializeStorage"'
---| '"InitializeResourceManager"'
---| '"InitializeScene"'
---| '"InitializeRemoteHost"'
---| '"InitializeVM"'
---| '"InitializeSystemService"'
---| '"InitializeHardwareService"'
---| '"InitializePushNotificationService"'
---| '"InitializeDialog"'
---| '"InitializeShareService"'
---| '"InitializeUserService"'
---| '"InitializeUDS"'
---| '"InitializeModalDialogService"'
---| '"InitializeGlobalUserData"'
---| '"InitializeSteam"'
---| '"InitializeWeGame"'
---| '"InitializeXCloud"'
---| '"InitializeRebe"'
---| '"InitializeBcat"'
---| '"InitializeEffectMemorySettings"'
---| '"InitializeRenderer"'
---| '"InitializeVR"'
---| '"InitializeSpeedTree"'
---| '"InitializeHID"'
---| '"InitializeEffect"'
---| '"InitializeGeometry"'
---| '"InitializeLandscape"'
---| '"InitializeHoudini"'
---| '"InitializeSound"'
---| '"InitializeWwiselib"'
---| '"InitializeSimpleWwise"'
---| '"InitializeWwise"'
---| '"InitializeAudioRender"'
---| '"InitializeGUI"'
---| '"InitializeSpine"'
---| '"InitializeMotion"'
---| '"InitializeBehaviorTree"'
---| '"InitializeAutoPlay"'
---| '"InitializeScenario"'
---| '"InitializeOctree"'
---| '"InitializeAreaMap"'
---| '"InitializeFSM"'
---| '"InitializeNavigation"'
---| '"InitializePointGraph"'
---| '"InitializeFluidFlock"'
---| '"InitializeTimeline"'
---| '"InitializePhysics"'
---| '"InitializeDynamics"'
---| '"InitializeHavok"'
---| '"InitializeBake"'
---| '"InitializeNetwork"'
---| '"InitializePuppet"'
---| '"InitializeVoiceChat"'
---| '"InitializeVivoxlib"'
---| '"InitializeStore"'
---| '"InitializeBrowser"'
---| '"InitializeDevelopSystem"'
---| '"InitializeBehavior"'
---| '"InitializeMovie"'
---| '"InitializeMame"'
---| '"InitializeSkuService"'
---| '"InitializeTelemetry"'
---| '"InitializeHansoft"'
---| '"InitializeNNFC"'
---| '"InitializeMixer"'
---| '"InitializeThreadPool"'
---| '"Setup"'
---| '"SetupJobScheduler"'
---| '"SetupResourceManager"'
---| '"SetupStorage"'
---| '"SetupGlobalUserData"'
---| '"SetupScene"'
---| '"SetupDevelopSystem"'
---| '"SetupUserService"'
---| '"SetupSystemService"'
---| '"SetupHardwareService"'
---| '"SetupPushNotificationService"'
---| '"SetupShareService"'
---| '"SetupModalDialogService"'
---| '"SetupVM"'
---| '"SetupHID"'
---| '"SetupRenderer"'
---| '"SetupEffect"'
---| '"SetupGeometry"'
---| '"SetupLandscape"'
---| '"SetupHoudini"'
---| '"SetupSound"'
---| '"SetupWwiselib"'
---| '"SetupSimpleWwise"'
---| '"SetupWwise"'
---| '"SetupAudioRender"'
---| '"SetupMotion"'
---| '"SetupNavigation"'
---| '"SetupPointGraph"'
---| '"SetupPhysics"'
---| '"SetupDynamics"'
---| '"SetupHavok"'
---| '"SetupMovie"'
---| '"SetupMame"'
---| '"SetupNetwork"'
---| '"SetupPuppet"'
---| '"SetupStore"'
---| '"SetupBrowser"'
---| '"SetupVoiceChat"'
---| '"SetupVivoxlib"'
---| '"SetupSkuService"'
---| '"SetupTelemetry"'
---| '"SetupHansoft"'
---| '"StartApp"'
---| '"SetupOctree"'
---| '"SetupAreaMap"'
---| '"SetupBehaviorTree"'
---| '"SetupFSM"'
---| '"SetupGUI"'
---| '"SetupSpine"'
---| '"SetupSpeedTree"'
---| '"SetupNNFC"'
---| '"Start"'
---| '"StartStorage"'
---| '"StartResourceManager"'
---| '"StartGlobalUserData"'
---| '"StartPhysics"'
---| '"StartDynamics"'
---| '"StartGUI"'
---| '"StartTimeline"'
---| '"StartOctree"'
---| '"StartAreaMap"'
---| '"StartBehaviorTree"'
---| '"StartFSM"'
---| '"StartSound"'
---| '"StartWwise"'
---| '"StartAudioRender"'
---| '"StartScene"'
---| '"StartRebe"'
---| '"StartNetwork"'
---| '"Update"'
---| '"UpdateDialog"'
---| '"UpdateRemoteHost"'
---| '"UpdateStorage"'
---| '"UpdateScene"'
---| '"UpdateDevelopSystem"'
---| '"UpdateWidget"'
---| '"UpdateAutoPlay"'
---| '"UpdateScenario"'
---| '"UpdateCapture"'
---| '"BeginFrameRendering"'
---| '"UpdateVR"'
---| '"UpdateHID"'
---| '"UpdateMotionFrame"'
---| '"BeginDynamics"'
---| '"PreupdateGUI"'
---| '"BeginHavok"'
---| '"UpdateAIMap"'
---| '"CreatePreupdateGroupFSM"'
---| '"CreatePreupdateGroupBehaviorTree"'
---| '"UpdateGlobalUserData"'
---| '"UpdateUDS"'
---| '"UpdateUserService"'
---| '"UpdateSystemService"'
---| '"UpdateHardwareService"'
---| '"UpdatePushNotificationService"'
---| '"UpdateShareService"'
---| '"UpdateSteam"'
---| '"UpdateWeGame"'
---| '"UpdateBcat"'
---| '"UpdateXCloud"'
---| '"UpdateRebe"'
---| '"UpdateNNFC"'
---| '"BeginPhysics"'
---| '"BeginUpdatePrimitive"'
---| '"BeginUpdatePrimitiveGUI"'
---| '"BeginUpdateSpineDraw"'
---| '"UpdatePuppet"'
---| '"UpdateGUI"'
---| '"PreupdateBehavior"'
---| '"PreupdateBehaviorTree"'
---| '"PreupdateFSM"'
---| '"PreupdateTimeline"'
---| '"UpdateBehavior"'
---| '"CreateUpdateGroupBehaviorTree"'
---| '"CreateNavigationChain"'
---| '"CreateUpdateGroupFSM"'
---| '"UpdateTimeline"'
---| '"PreUpdateAreaMap"'
---| '"UpdateOctree"'
---| '"UpdateAreaMap"'
---| '"UpdateBehaviorTree"'
---| '"UpdateTimelineFsm2"'
---| '"UpdateNavigationPrev"'
---| '"UpdateFSM"'
---| '"UpdateMotion"'
---| '"UpdateSpine"'
---| '"EffectCollisionLimit"'
---| '"UpdatePhysicsAfterUpdatePhase"'
---| '"UpdateGeometry"'
---| '"UpdateLandscape"'
---| '"UpdateHoudini"'
---| '"UpdatePhysicsCharacterController"'
---| '"BeginUpdateHavok2"'
---| '"UpdateDynamics"'
---| '"UpdateNavigation"'
---| '"UpdatePointGraph"'
---| '"UpdateFluidFlock"'
---| '"UpdateConstraintsBegin"'
---| '"LateUpdateBehavior"'
---| '"EditUpdateBehavior"'
---| '"LateUpdateSpine"'
---| '"BeginUpdateHavok"'
---| '"BeginUpdateEffect"'
---| '"UpdateConstraintsEnd"'
---| '"UpdatePhysicsAfterLateUpdatePhase"'
---| '"PrerenderGUI"'
---| '"PrepareRendering"'
---| '"UpdateSound"'
---| '"UpdateWwiselib"'
---| '"UpdateSimpleWwise"'
---| '"UpdateWwise"'
---| '"UpdateAudioRender"'
---| '"CreateSelectorGroupFSM"'
---| '"UpdateNetwork"'
---| '"UpdateHavok"'
---| '"EndUpdateHavok"'
---| '"UpdateFSMSelector"'
---| '"UpdateBehaviorTreeSelector"'
---| '"BeforeLockSceneRendering"'
---| '"EndUpdateHavok2"'
---| '"UpdateJointExpression"'
---| '"UpdateBehaviorTreeSelectorLegacy"'
---| '"UpdateEffect"'
---| '"EndUpdateEffect"'
---| '"UpdateWidgetDynamics"'
---| '"LockScene"'
---| '"WaitRendering"'
---| '"EndDynamics"'
---| '"EndPhysics"'
---| '"BeginRendering"'
---| '"UpdateSpeedTree"'
---| '"RenderDynamics"'
---| '"RenderGUI"'
---| '"RenderGeometry"'
---| '"RenderLandscape"'
---| '"RenderHoudini"'
---| '"UpdatePrimitiveGUI"'
---| '"UpdatePrimitive"'
---| '"UpdateSpineDraw"'
---| '"EndUpdatePrimitive"'
---| '"EndUpdatePrimitiveGUI"'
---| '"EndUpdateSpineDraw"'
---| '"GUIPostPrimitiveRender"'
---| '"ShapeRenderer"'
---| '"UpdateMovie"'
---| '"UpdateMame"'
---| '"UpdateTelemetry"'
---| '"UpdateHansoft"'
---| '"DrawWidget"'
---| '"DevelopRenderer"'
---| '"EndRendering"'
---| '"UpdateStore"'
---| '"UpdateBrowser"'
---| '"UpdateVoiceChat"'
---| '"UpdateVivoxlib"'
---| '"UnlockScene"'
---| '"UpdateVM"'
---| '"StepVisualDebugger"'
---| '"WaitForVblank"'
---| '"Terminate"'
---| '"TerminateScene"'
---| '"TerminateRemoteHost"'
---| '"TerminateHansoft"'
---| '"TerminateTelemetry"'
---| '"TerminateMame"'
---| '"TerminateMovie"'
---| '"TerminateSound"'
---| '"TerminateSimpleWwise"'
---| '"TerminateWwise"'
---| '"TerminateWwiselib"'
---| '"TerminateAudioRender"'
---| '"TerminateVoiceChat"'
---| '"TerminateVivoxlib"'
---| '"TerminatePuppet"'
---| '"TerminateNetwork"'
---| '"TerminateStore"'
---| '"TerminateBrowser"'
---| '"TerminateSpine"'
---| '"TerminateGUI"'
---| '"TerminateAreaMap"'
---| '"TerminateOctree"'
---| '"TerminateFluidFlock"'
---| '"TerminateBehaviorTree"'
---| '"TerminateFSM"'
---| '"TerminateNavigation"'
---| '"TerminatePointGraph"'
---| '"TerminateEffect"'
---| '"TerminateGeometry"'
---| '"TerminateLandscape"'
---| '"TerminateHoudini"'
---| '"TerminateRenderer"'
---| '"TerminateHID"'
---| '"TerminateDynamics"'
---| '"TerminatePhysics"'
---| '"TerminateResourceManager"'
---| '"TerminateHavok"'
---| '"TerminateModalDialogService"'
---| '"TerminateShareService"'
---| '"TerminateGlobalUserData"'
---| '"TerminateStorage"'
---| '"TerminateVM"'
---| '"TerminateJobScheduler"'
---| '"Finalize"'
---| '"FinalizeThreadPool"'
---| '"FinalizeHansoft"'
---| '"FinalizeTelemetry"'
---| '"FinalizeMame"'
---| '"FinalizeMovie"'
---| '"FinalizeBehavior"'
---| '"FinalizeDevelopSystem"'
---| '"FinalizeTimeline"'
---| '"FinalizePuppet"'
---| '"FinalizeNetwork"'
---| '"FinalizeStore"'
---| '"FinalizeBrowser"'
---| '"finalizeAutoPlay"'
---| '"finalizeScenario"'
---| '"FinalizeBehaviorTree"'
---| '"FinalizeFSM"'
---| '"FinalizeNavigation"'
---| '"FinalizePointGraph"'
---| '"FinalizeAreaMap"'
---| '"FinalizeOctree"'
---| '"FinalizeFluidFlock"'
---| '"FinalizeMotion"'
---| '"FinalizeDynamics"'
---| '"FinalizePhysics"'
---| '"FinalizeHavok"'
---| '"FinalizeBake"'
---| '"FinalizeSpine"'
---| '"FinalizeGUI"'
---| '"FinalizeSound"'
---| '"FinalizeWwiselib"'
---| '"FinalizeSimpleWwise"'
---| '"FinalizeWwise"'
---| '"FinalizeAudioRender"'
---| '"FinalizeEffect"'
---| '"FinalizeGeometry"'
---| '"FinalizeSpeedTree"'
---| '"FinalizeLandscape"'
---| '"FinalizeHoudini"'
---| '"FinalizeRenderer"'
---| '"FinalizeHID"'
---| '"FinalizeVR"'
---| '"FinalizeBcat"'
---| '"FinalizeRebe"'
---| '"FinalizeXCloud"'
---| '"FinalizeSteam"'
---| '"FinalizeWeGame"'
---| '"FinalizeNNFC"'
---| '"FinalizeGlobalUserData"'
---| '"FinalizeModalDialogService"'
---| '"FinalizeSkuService"'
---| '"FinalizeUDS"'
---| '"FinalizeUserService"'
---| '"FinalizeShareService"'
---| '"FinalizeSystemService"'
---| '"FinalizeHardwareService"'
---| '"FinalizePushNotificationService"'
---| '"FinalizeScene"'
---| '"FinalizeVM"'
---| '"FinalizeResourceManager"'
---| '"FinalizeRemoteHost"'
---| '"FinalizeStorage"'
---| '"FinalizeDialog"'
---| '"FinalizeMixer"'
---| '"FinalizeGameCore"'

---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#reon_pre_application_entryname-function)
---
---@param name ModuleEntry
---@param fn function
---@return nil
function re.on_pre_application_entry(name, fn) end

---
---Triggers `function` when the application/module entry associated with `name` is being executed.
---
---This is very powerful, and can be used to run code at many important points in the engine's logic loop.
---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#reon_application_entryname-function)
---
---@param name ModuleEntry
---@param fn function
---@return nil
function re.on_application_entry(name, fn) end

---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#reon_pre_gui_draw_elementfunction)
---
---@param fn function
---@return nil
function re.on_pre_gui_draw_element(fn) end

---
---Function prototype: `function on_*_draw_element(element, context)`
---
---Triggers `function` when a GUI element is being drawn.
---
---Requires that a `bool` is returned in `on_pre_gui_draw_element`. When `false` is returned, the GUI element is not drawn.
---
---element is an `REComponent*`.
---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#reon_gui_draw_elementfunction)
---
---@param fn function
---@return nil
function re.on_gui_draw_element(fn) end

---
---Called every frame when the "Script Generated UI" in the menu is open.
---
---`imgui` functions can be called here, and will be placed in their own dropdown in the REFramework menu.
---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#reon_draw_uifunction)
---
---@param fn function
---@return nil
function re.on_draw_ui(fn) end

---
---Called every frame. `draw` functions can be used here. Don't use `imgui` functions unless using `begin_window` etc...
---
---Try to minimize calling game methods when inside `on_frame` and `on_draw_ui`.
---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#reon_framefunction)
---
---@param fn function
---@return nil
function re.on_frame(fn) end

---
---Calls `function` when scripts are being reset. Useful for cleaning up stuff. Calls `on_config_save()`.
---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#reon_script_resetfunction)
---
---@param fn function
---@return nil
function re.on_script_reset(fn) end

---
---Called when REFramework wants to save its config.
---
---[View documents](https://cursey.github.io/reframework-book/api/re.html#reon_config_savefunction)
---
---@param fn function
---@return nil
function re.on_config_save(fn) end
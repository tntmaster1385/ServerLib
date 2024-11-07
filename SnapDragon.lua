local SnapdragonController = require(script.SnapdragonController)
local SnapdragonRef = require(script.SnapdragonRef)

local function createDragController(...)
	return SnapdragonController.new(...)
end

local function setDragState(state)
	return SnapdragonController:SetDragEnabled(state)
end

local function createRef(gui)
	return SnapdragonRef.new(gui)
end

local export
export = {
	createDragController = createDragController, 
	SnapdragonController = SnapdragonController,
	setDragState = setDragState,
	createRef = createRef
}
-- roblox-ts `default` support
export.default = export
return export

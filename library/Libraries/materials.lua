---@meta

---The materials library provides a way to create and alter materials for rendering.
---@class materials
materials = {}

---Find material by name.
---@param name string
---@return Material
---@nodiscard
function materials.Find(name) end

---Enumerate all loaded materials.
---@param callback fun(material: Material)
function materials.Enumerate(callback) end

---Create custom material. \
---To create custom materials follow the [Valve Material Type](https://developer.valvesoftware.com/wiki/Material) syntax.
---@param name string
---@param vmt string
---@return Material
---@nodiscard
function materials.Create(name, vmt) end

---Create a texture render target. \
---Name should be an unique name of the material. \
---Width and height are the dimensions of the texture. \
---Returns a Texture object.
---@param name string
---@param width integer
---@param height integer
---@return Texture
---@nodiscard
function materials.CreateTextureRenderTarget(name, width, height) end

return materials

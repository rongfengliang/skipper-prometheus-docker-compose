
local uuid = require("uuid")
local json = require("json")
local cuid = require("cuid")
function request(ctx, params)
    -- ctx.serve({
    --     status_code=302,
    --     header={
    --         location="http://www.baidu.com/",
    --     },
    -- })
    ctx.request.header["user_token"]="request_token"
end

function response(ctx, params)
    ctx.response.header["lua_token"]="dalongdemo";
    -- local user = {
    --     name="dalong",
    --     age=33
    -- }
    local id = cuid.generate ( )
    local slug = cuid.slug ( )
    local tokeninfo = {
        token=uuid(),
        status=200,
        id=id,
        slug=slug
    }
    ctx.serve({
        status_code=200,
        header= {
            ['Content-Type']="application/json",
            lua_token=uuid()
        },
        body=json.encode(tokeninfo)
    })
end
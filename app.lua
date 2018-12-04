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
    local json = require("json")
    ctx.response.header["lua_token"]="dalongdemo";
    -- local user = {
    --     name="dalong",
    --     age=33
    -- }
    -- ctx.serve({
    --     status_code=200,
    --     header= {
    --         ['Content-Type']="application/json"
    --     },
    --     body=json.encode(ctx.response)
    -- })
end
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
end
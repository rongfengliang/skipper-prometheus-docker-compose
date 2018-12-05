local http = require("http")
local json = require("json")
local base64  = require("base64")
function response(ctx, params)
    --- do some response 
    print(ctx.state_bag["userinfo"])
    local baidu,err =http.get("http://www.baidu.com")
    if err~=nil then
        print("some wrong")
    else
        print(baidu.body)
    end
    
    local userinfo = json.decode(ctx.state_bag["userinfo"])
    print(userinfo["name"])
    print(base64.encode(ctx.state_bag["userinfo"]))
end

function request(ctx, params)
    
    --- set some share status
    ctx.state_bag["userinfo"]=json.encode({
        name="dalong",
        age=444,
        classinfo="classone"
    })
    
end

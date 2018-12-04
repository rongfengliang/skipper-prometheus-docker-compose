function request(ctx, params)
    ctx.serve({
        status_code=302,
        header={
            location="http://www.baidu.com/",
        },
    })
end
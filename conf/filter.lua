local remote_user = ngx.var.remote_user
local remote_addr = ngx.var.remote_addr
local data = ngx.req.get_body_data()
local uri = ngx.var.uri

ngx.log(ngx.STDERR, remote_user)
ngx.log(ngx.STDERR, remote_addr)
ngx.log(ngx.STDERR, uri)
ngx.log(ngx.STDERR, data)

if string.match(uri, "beacon") then
    ngx.say('This URL is blocked')
    ngx.exit(403);
else

end

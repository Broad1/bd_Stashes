fx_version 'cerulean'
game 'gta5'
author 'Broad Development'
description 'ox_stashes'
version '0.1'
lua54 'yes'

shared_scripts {
    'config.lua',
    '@ox_lib/init.lua' --⚠️PLEASE READ⚠️; Uncomment this line if you use 'ox_lib'.⚠️
}

client_scripts {
   "client.lua"
}

server_scripts {
 'server.lua'
}



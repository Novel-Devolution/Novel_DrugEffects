fx_version 'cerulean'
game 'gta5'

name "Novel_DrugEffect"
description "Drug Effect"
author "aRii0"
version "1.0.0"

shared_scripts {
	'shared/*.lua'
}

client_scripts {
	'client/*.lua'
}

server_scripts {
	'server/*.lua'
}

escrow_ignore { -- die Datein die nicht verschlüsselt werden sollen
	'client/effects.lua',
	'shared/*.lua'
}

lua54 "yes"

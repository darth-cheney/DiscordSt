mock
startMockServer
	"Start a ZnServer that simulates the Discord server."
	server := DSMockServer new.
	server start.
	^ server
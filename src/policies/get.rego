package labkoatworkflow.GET.api.protected

import input.policy.path
import input.user.properties.roles as user_roles

default allowed = false

default visible = false

default enabled = false

allowed {
	some index
	data.roles[user_roles[index]].perms[path].allowed
}

visible {
	some index
	data.roles[user_roles[index]].perms[path].visible
}

enabled {
	some index
	data.roles[user_roles[index]].perms[path].enabled
}

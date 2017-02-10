#include <updater>

#pragma semicolon 1
#pragma newdecls required

#include <sourcemod>

#define PLUGIN_VERSION "0.0"

public Plugin myinfo = 
{
	name = "Example plugin",
	author = "fakuivan",
	description = "",
	version = PLUGIN_VERSION,
	url = "https://forums.alliedmods.net/member.php?u=264797"
};

#define UPDATE_URL    "https://raw.githubusercontent.com/servadestroya/sm_updater/master/example/updater.txt"

public void OnPluginStart()
{
    if (LibraryExists("updater"))
    {
        Updater_AddPlugin(UPDATE_URL);
    }
	//CreateConVar("sm__version", PLUGIN_VERSION, "Version of ", FCVAR_SPONLY|FCVAR_REPLICATED|FCVAR_NOTIFY);
}

public void OnLibraryAdded(const char[] s_name)
{
    if (StrEqual(s_name, "updater"))
    {
        Updater_AddPlugin(UPDATE_URL);
    }
}

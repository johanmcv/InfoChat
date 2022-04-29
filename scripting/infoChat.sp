#include <sourcemod>
#include <multicolors>

public Plugin myinfo =
{
	name = "infoChat Multilang",
	author = "Panncode",
	description = "Print info in the chat by means of commands. With multi language support",
	version = "1.0",
	url = "http://johanvillamizar.com/"
};

public void OnPluginStart()
{
	LoadTranslations("infoChat.phrases");
	RegConsoleCmd("sm_discord", discord);
	RegConsoleCmd("sm_steam", steam);
	RegConsoleCmd("sm_website", website);
}

public Action discord(int client, int args)
{
	CPrintToChat(client, "%t", "Discord");
	return Plugin_Handled;
}
public Action steam(int client, int args)
{
	CPrintToChat(client, "%t", "Steam");
	return Plugin_Handled;
}
public Action website(int client, int args)
{
	CPrintToChat(client, "%t", "Website");
	return Plugin_Handled;
}
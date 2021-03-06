#include "stdafx.h"

#include "ZPost.h"
#include "MBlobArray.h"
#include "MMatchTransDataType.h"
#include "MMatchGlobal.h"
#include "ZGame.h"
#include "ZMyCharacter.h"
#include "ZGameClient.h"
#include "ZApplication.h"
#include "ZConfiguration.h"


void ZPostUserOption()
{
	unsigned long nOptionFlags = 0;

	if (Z_ETC_REJECT_WHISPER)
		nOptionFlags |= MBITFLAG_USEROPTION_REJECT_WHISPER;
	if (Z_ETC_REJECT_INVITE)
		nOptionFlags |= MBITFLAG_USEROPTION_REJECT_INVITE;

	//todo: add options for general and private chat
	//if (Z_ETC_REJECT_PCHAT)
	//	nOptionFlags |= MBITFLAG_USEROPTION_REJECT_PCHAT;

	ZPOSTCMD1(MC_MATCH_USER_OPTION, MCmdParamUInt(nOptionFlags));
}


// 해커 리버싱 방해용도의 커맨드ID 반환 함수 : 자세한 주석은 헤더 참조
//#pragma optimize("", off)

int UncloakCmdId(int cloakedCmdId, int cloakFactor)
{
	return cloakedCmdId - cloakFactor;
}

//#pragma optimize("", on)
#include "stdafx.h"
#include "MAsyncDBJob_UpdateCharInfoData.h"

void MAsyncDBJob_UpdateCharInfoData::Run(void* pContext)
{
	MMatchDBMgr* pDBMgr = (MMatchDBMgr*)pContext;

	if (!pDBMgr->UpdateCharInfoData(m_nCID,
		m_nAddedXP,
		m_nAddedBP,
		m_nAddedKillCount,
		m_nAddedDeathCount,
		m_nAddedPlayTime,
		m_nAddedRankedKillCount,
		m_nAddedRankedDeathCount))
	{
		SetResult(MASYNC_RESULT_FAILED);
		return;
	}

	SetResult(MASYNC_RESULT_SUCCEED);
}

bool MAsyncDBJob_UpdateCharInfoData::Input(const int nCID,
	const int nAddedXP,
	const int nAddedBP,
	const int nAddedKillCount,
	const int nAddedDeathCount,
	const int nAddedPlayTime,
	const int nAddedRankedKillCount,
	const int nAddedRankedDeathCount)
{
	m_nCID = nCID;
	m_nAddedXP = nAddedXP;
	m_nAddedBP = nAddedBP;
	m_nAddedKillCount = nAddedKillCount;
	m_nAddedDeathCount = nAddedDeathCount;
	m_nAddedPlayTime = nAddedPlayTime;
	m_nAddedRankedKillCount = nAddedRankedKillCount;
	m_nAddedRankedDeathCount = nAddedRankedDeathCount;

	return true;
}

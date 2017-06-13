function [IndexOut] = CreateIndicies(CommandType,VehicleType)

%Set Command System Type
cmdtypeAPBV = 0; % Alt, Psi, Beta, Vel command system
cmdtypePQRT = 1; % P, Q, R, Throttle command system
%Choose Pararamter and Data files here
acftLocaas = 0;
acftGlobalHawk = 1;
acftICE = 2;

IndexOut = [];
IndexOutput=1;

switch VehicleType,
case acftLocaas,
	switch CommandType,
	case cmdtypeAPBV,
		IndexOut.stateActuator0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateU_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateV_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateW_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateP_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateQ_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateR_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePhi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateTheta_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePsi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateX_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateY_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateZ_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePowerLevel_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputMach = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVt_ftpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAlpha_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputBeta_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAltitude_ft = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputPdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputQdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputRdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityX_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityY_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityZ_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputFlightPathAngle_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDPdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDQdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDRdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdP_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdQ_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdR_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdThrottle_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outThrustX_lbs = IndexOutput;IndexOutput = IndexOutput + 1;
		%%%%%%%%%%%%%%%%%% TOTALS
		IndexOut.TotalIndexOutput = IndexOutput-1;
		IndexOut.TotalIndexState = IndexOut.statePowerLevel_pct;
	case cmdtypePQRT,
		IndexOut.stateActuator0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateU_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateV_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateW_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateP_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateQ_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateR_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePhi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateTheta_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePsi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateX_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateY_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateZ_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePowerLevel_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputMach = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVt_ftpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAlpha_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputBeta_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAltitude_ft = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputPdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputQdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputRdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityX_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityY_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityZ_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputFlightPathAngle_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDPdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDQdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDRdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outThrustX_lbs = IndexOutput;IndexOutput = IndexOutput + 1;
		%%%%%%%%%%%%%%%%%% TOTALS
		IndexOut.TotalIndexOutput = IndexOutput-1;
		IndexOut.TotalIndexState = IndexOut.statePowerLevel_pct;
	otherwise,
		disp('ERROR: Unknown FCS Type Encountered')
		return;
	end;
	
case acftGlobalHawk,
	switch CommandType,
	case cmdtypeAPBV,
		IndexOut.stateActuator0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateU_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateV_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateW_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateP_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateQ_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateR_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePhi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateTheta_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePsi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateX_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateY_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateZ_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePowerLevel_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputMach = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVt_ftpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAlpha_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputBeta_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAltitude_ft = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputPdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputQdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputRdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityX_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityY_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityZ_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputFlightPathAngle_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDPdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDQdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDRdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdP_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdQ_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdR_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdThrottle_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outThrustX_lbs = IndexOutput;IndexOutput = IndexOutput + 1;
		%%%%%%%%%%%%%%%%%% TOTALS
		IndexOut.TotalIndexOutput = IndexOutput-1;
		IndexOut.TotalIndexState = IndexOut.statePowerLevel_pct;
	case cmdtypePQRT,
		IndexOut.stateActuator0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateU_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateV_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateW_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateP_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateQ_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateR_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePhi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateTheta_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePsi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateX_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateY_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateZ_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePowerLevel_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputMach = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVt_ftpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAlpha_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputBeta_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAltitude_ft = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputPdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputQdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputRdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityX_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityY_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityZ_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputFlightPathAngle_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDPdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDQdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDRdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outThrustX_lbs = IndexOutput;IndexOutput = IndexOutput + 1;
		%%%%%%%%%%%%%%%%%% TOTALS
		IndexOut.TotalIndexOutput = IndexOutput-1;
		IndexOut.TotalIndexState = IndexOut.statePowerLevel_pct;
	otherwise,
		disp('ERROR: Unknown FCS Type Encountered')
		return;
	end;
case acftICE,
	switch CommandType,
	case cmdtypeAPBV,
		IndexOut.stateActuator0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateU_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateV_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateW_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateP_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateQ_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateR_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePhi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateTheta_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePsi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateX_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateY_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateZ_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePowerLevel_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputMach = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVt_ftpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAlpha_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputBeta_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAltitude_ft = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputPdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputQdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputRdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityX_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityY_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityZ_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputFlightPathAngle_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDPdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDQdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDRdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdP_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdQ_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdR_radpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outCmdThrottle_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outThrustX_lbs = IndexOutput;IndexOutput = IndexOutput + 1;
		%%%%%%%%%%%%%%%%%% TOTALS
		IndexOut.TotalIndexOutput = IndexOutput-1;
		IndexOut.TotalIndexState = IndexOut.statePowerLevel_pct;
	case cmdtypePQRT,
		IndexOut.stateActuator0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateActuator8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateU_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateV_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateW_FeetPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateP_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateQ_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateR_RadPerSec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePhi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateTheta_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePsi_Rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateX_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateY_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.stateZ_Feet = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.statePowerLevel_pct = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorPosition8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitUpper8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitLower8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorLimitRate8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outActuatorTimeConstant8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputMach = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVt_ftpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAlpha_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputBeta_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputAltitude_ft = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputPdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputQdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputRdotNeutral_radpersec2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityX_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityY_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputVelocityZ_feetpersec = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outputFlightPathAngle_rad = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg0 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg1 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg2 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg3 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg4 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg5 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg6 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg7 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outDeltaCmd_deg8 = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDPdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDQdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outPIDRdotOutput = IndexOutput;IndexOutput = IndexOutput + 1;
		IndexOut.outThrustX_lbs = IndexOutput;IndexOutput = IndexOutput + 1;
		%%%%%%%%%%%%%%%%%% TOTALS
		IndexOut.TotalIndexOutput = IndexOutput-1;
		IndexOut.TotalIndexState = IndexOut.statePowerLevel_pct;
	otherwise,
		disp('ERROR: Unknown FCS Type Encountered')
		return;
	end;
otherwise,
	disp('ERROR: Unknown Aircraft Type Encountered')
	return;
end;
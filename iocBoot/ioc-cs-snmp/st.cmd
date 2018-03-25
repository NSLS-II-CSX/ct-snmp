#!../../bin/linux-x86_64/snmp2
## You may have to change snmp to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet("EPICS_CA_AUTO_ADDR_LIST", "NO")
epicsEnvSet("EPICS_CA_ADDR_LIST", "10.23.0.255")

epicsEnvSet("ENGINEER", "Daron Chabot")
epicsEnvSet("LOCATION", "23-ID")

epicsEnvSet("MIBDIRS", "$(TOP)/mibs:/usr/share/mibs/site:/usr/share/snmp/mibs:/usr/share/mibs/iana:/usr/share/mibs/ietf:/usr/share/mibs/netsnmp")
epicsEnvSet("MIBS","ALL")

## Register all support components
dbLoadDatabase("$(TOP)/dbd/snmp2.dbd")
snmp2_registerRecordDeviceDriver(pdbbase)

## Load record instances

# Newer style 
dbLoadRecords("$(TOP)/db/snmpWienerBnl.db" , "SYS=XF:23ID2-CT, D=WienerCrate:VME, IP = 10.23.2.21")
dbLoadRecords("$(TOP)/db/snmpWienerBnl.db" , "SYS=XF:23ID1-CT, D=WienerCrate:VME, IP = 10.23.2.22")

#
# UPS Definitions
#
dbLoadRecords("$(TOP)/db/ups.db", "SYS=XF:23ID-CT,DEV={UPS:1},IP=10.23.3.1,C=public")
dbLoadRecords("$(TOP)/db/ups.db", "SYS=XF:23ID-CT,DEV={UPS:2},IP=10.23.3.2,C=public")
dbLoadRecords("$(TOP)/db/ups.db", "SYS=XF:23ID-CT,DEV={UPS:3},IP=10.23.3.3,C=public")
dbLoadRecords("$(TOP)/db/ups.db", "SYS=XF:23ID-CT,DEV={UPS:4},IP=10.23.3.4,C=public")

#
# PDU Definitions
#
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:A1-PDU:1},IP=10.23.2.171")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:A1-PDU:2},IP=10.23.2.172")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:A2-PDU:1},IP=10.23.2.155")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:A2-PDU:2},IP=10.23.2.173")

dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:B1-PDU:1},IP=10.23.2.174")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:B1-PDU:2},IP=10.23.2.175")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:B2-PDU:1},IP=10.23.2.156")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:B2-PDU:2},IP=10.23.2.157")

dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:C1-PDU:1},IP=10.23.2.158")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:C1-PDU:2},IP=10.23.2.159")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:C2-PDU:1},IP=10.23.2.160")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:C2-PDU:2},IP=10.23.2.161")

dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:D1-PDU:1},IP=10.23.2.162")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:D1-PDU:2},IP=10.23.2.163")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:D2-PDU:1},IP=10.23.2.164")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:D2-PDU:2},IP=10.23.2.165")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:D3-PDU:1},IP=10.23.2.176")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:D3-PDU:2},IP=10.23.2.177")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:D4-PDU:1},IP=10.23.2.152")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:D4-PDU:2},IP=10.23.2.153")

dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:E1-PDU:1},IP=10.23.2.178")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:E1-PDU:2},IP=10.23.2.179")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:E2-PDU:1},IP=10.23.2.166")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:E2-PDU:2},IP=10.23.2.167")
dbLoadRecords("$(TOP)/db/AP8959.db", "SYS=XF:23ID-CT,DEV={RG:E3-PDU:1},IP=10.23.2.169")
dbLoadRecords("$(TOP)/db/AP7930.db", "SYS=XF:23ID-CT,DEV={RG:E3-PDU:2},IP=10.23.2.151")

#dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:F1-PDU:1},IP=10.23.2.168")
#dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-CT,DEV={RG:F1-PDU:2},IP=10.23.2.170")

#dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID1-CT,DEV={Dif-PDU:1},IP=10.23.2.180")
dbLoadRecords("$(TOP)/db/AP7900.db", "SYS=XF:23ID-VA,DEV={Pmp-PDU:1},IP=10.23.2.181")

SNMP_DRV_DEBUG(0)
SNMP_DEV_DEBUG(0)

# Each SNMP query message could query multi variables.
# This number needs to be the minimum one of all your agents
snmpMaxVarsPerMsg(30)

dbLoadRecords("$(EPICS_BASE)/db/iocAdminSoft.db", "IOC=XF:23IDA-CT{IOC:SNMP}")

set_savefile_path("${TOP}/as","/save")
set_requestfile_path("${TOP}/as","/req")

set_pass0_restoreFile("snmp_settings.sav")
set_pass1_restoreFile("snmp_settings.sav")

# So putlog and access control
asSetSubstitutions("WS=csxwsall")
asSetFilename("/epics/xf/23id/xf23id.acf")

iocInit()

makeAutosaveFileFromDbInfo("as/req/snmp_settings.req", "autosaveFields")
create_monitor_set("snmp_settings.req", 10 , "")

dbl > records.dbl
system "cp records.dbl /cf-update/xf23ida-ioc1.cs-snmp.dbl"

caPutLogInit("xf23id-ca:7004", 0)

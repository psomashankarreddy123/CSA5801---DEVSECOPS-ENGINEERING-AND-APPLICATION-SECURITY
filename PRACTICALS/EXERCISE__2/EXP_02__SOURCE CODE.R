library(DiagrammeR)

grViz("

digraph DevSecOps {

graph [
layout = circo,
overlap = false,
splines = true,
bgcolor = white,
size = '18,18!',
pad = 1.0
]

node [
shape = box,
style = 'rounded,filled',
fontname = Cambria,
fontsize = 24,
fontcolor = black,
color = black,
penwidth = 2.5,
width = 2.2,
height = 0.8,
margin = '0.25,0.15'
]

edge[
color = gray40,
penwidth = 2,
arrowsize = 0.8
]

Center[
label='DEVSECOPS\nLIFECYCLE',
fillcolor='gold',
fontsize=28,
penwidth=3
]

Plan[
label='PLAN',
fillcolor='lightskyblue'
]

Code[
label='CODE',
fillcolor='palegreen'
]

Build[
label='BUILD',
fillcolor='khaki'
]

Test[
label='TEST',
fillcolor='plum'
]

Release[
label='RELEASE',
fillcolor='lightpink'
]

Operate[
label='OPERATE',
fillcolor='peachpuff'
]

Monitor[
label='MONITOR',
fillcolor='lightcyan'
]

Center -> Plan
Center -> Code
Center -> Build
Center -> Test
Center -> Release
Center -> Operate
Center -> Monitor

#######################################################
# PLAN
#######################################################

Req[
label='Requirements',
fillcolor='AliceBlue'
]

Risk[
label='Risk Analysis',
fillcolor='AliceBlue'
]

Threat[
label='Threat Modeling',
fillcolor='AliceBlue'
]

Plan -> Req
Plan -> Risk
Plan -> Threat

#######################################################
# CODE
#######################################################

Secure[
label='Secure Coding',
fillcolor='Honeydew'
]

Review[
label='Code Review',
fillcolor='Honeydew'
]

Version[
label='Version Control',
fillcolor='Honeydew'
]

Code -> Secure
Code -> Review
Code -> Version

#######################################################
# BUILD
#######################################################

CI[
label='CI Pipeline',
fillcolor='LemonChiffon'
]

Dependency[
label='Dependency Scan',
fillcolor='LemonChiffon'
]

Automation[
label='Build Automation',
fillcolor='LemonChiffon'
]

Build -> CI
Build -> Dependency
Build -> Automation

#######################################################
# TEST
#######################################################

SAST[
label='SAST',
fillcolor='LavenderBlush'
]

DAST[
label='DAST',
fillcolor='LavenderBlush'
]

Unit[
label='Unit Testing',
fillcolor='LavenderBlush'
]

Test -> SAST
Test -> DAST
Test -> Unit

#######################################################
# RELEASE
#######################################################

Container[
label='Container Security',
fillcolor='MistyRose'
]

IaC[
label='IaC Security',
fillcolor='MistyRose'
]

Approval[
label='Approval',
fillcolor='MistyRose'
]

Release -> Container
Release -> IaC
Release -> Approval

#######################################################
# OPERATE
#######################################################

Deploy[
label='Deployment',
fillcolor='PapayaWhip'
]

Config[
label='Configuration',
fillcolor='PapayaWhip'
]

Runtime[
label='Runtime Security',
fillcolor='PapayaWhip'
]

Operate -> Deploy
Operate -> Config
Operate -> Runtime

#######################################################
# MONITOR
#######################################################

Logs[
label='Log Monitoring',
fillcolor='Azure'
]

Incident[
label='Incident Response',
fillcolor='Azure'
]

Compliance[
label='Compliance',
fillcolor='Azure'
]

Monitor -> Logs
Monitor -> Incident
Monitor -> Compliance

}
")
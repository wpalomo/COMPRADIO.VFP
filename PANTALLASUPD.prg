
*> Actualización de las pantallas de RF (DBF --> BBDD).
*> Recibe PANTALLAS y actualiza en <BBDD>.PANTALLAS

Local oReg
Local nASql, TF, lStado

Set Classlib To ..\PROCAOT.VFP\TF6 Additive
Set Classlib To ..\PROCAOT.VFP\Procaot Additive

Set Step On

nASql = SQLConnect()
TF = CreateObject("tf")
=TF.ConectarBBDDPorHandle(nASql)

Set Step On

Select 0
Use PANTALLAS Order 1

Scan All
	Scatter Name oReg
	lStado = TF.InsertarRegistro("PANTALLAS", oReg)
EndScan

Use In (Select ("PANTALLAS"))

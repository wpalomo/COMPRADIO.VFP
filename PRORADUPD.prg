
*> Actualizaci�n de los mensajes de RF (DBF --> BBDD).
*> Recibe PRORAD  y actualiza en <BBDD>.PRORAD

Local oReg
Local nASql, TF, cWhere, lStado

Set Classlib To ..\PROCAOT.VFP\TF6 Additive
Set Classlib To ..\PROCAOT.VFP\Procaot Additive

Set Step On

nASql = SQLConnect()
TF = CreateObject("tf")
=TF.ConectarBBDDPorHandle(nASql)

Set Step On

Select 0
Use PRORAD Order 1

Scan All
	Scatter Name oReg
	lStado = TF.InsertarRegistro("PRORAD", oReg)
EndScan

Use In (Select ("PRORAD"))

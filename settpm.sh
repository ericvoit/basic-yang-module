TP="/media/sf_rats/ietf-tpm-remote-attestation@"
TP+=$1
TP+=".yang"
export -p TPM=$TP
echo "TPM File Path = " $TPM

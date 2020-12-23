TPS="/media/sf_rats/ietf-tpm-remote-attestation-stream@"
TPS+=$1
TPS+=".yang"
export -p TPMS=$TPS
echo "TPM Stream File Path = " $TPMS

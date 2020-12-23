echo "YANG directory: " $YANGPATH
echo "Remote Attestation TPM yang file = " $TPM
TS="$(date +%Y%m%d_%H%M%S)"
export -p timestamp=$TS
echo "Trees at = "$timestamp
mkdir -p $YANGPATH/$timestamp
cp $TPM $YANGPATH/$timestamp

pyang $TPM -o $YANGPATH/$timestamp/compute-nodes.tree -f tree --tree-path=/rats-support-structures/compute-nodes --tree-line-length 70
echo "Completed compute-nodes"
pyang $TPM -o $YANGPATH/$timestamp/tpms.tree -f tree --tree-path=/rats-support-structures/tpms --tree-line-length 70
echo "Completed tpms"
pyang $TPM -o $YANGPATH/$timestamp/attester-supported-algos.tree -f tree --tree-path=/rats-support-structures/attester-supported-algos --tree-line-length 70
echo "Completed attester-supported-algos"
pyang $TPM -o $YANGPATH/$timestamp/tpm12-challenge-response-attestation.tree -f tree --tree-path=/tpm12-challenge-response-attestation --tree-line-length 70
echo "Completed tpm12-challenge-response-attestation"
pyang $TPM -o $YANGPATH/$timestamp/tpm20-challenge-response-attestation.tree -f tree --tree-path=/tpm20-challenge-response-attestation --tree-line-length 70
echo "Completed tpm20-challenge-response-attestation"
pyang $TPM -o $YANGPATH/$timestamp/log-retrieval.tree -f tree --tree-path=/log-retrieval --tree-line-length 70
echo "Completed log-retrieval"



rule macs2_call_peaks_narrow:
	input:
		unpack(get_macs2_input_narrow)
	output:
		multiext("results/narrow_peaks/{sample}",
                 "_peaks.xls",   ### required
                 ### optional output files
                 "_peaks.narrowPeak",
                 "_summits.bed"
                 )
	log: 
		"logs/macs2/callpeak_narrow_{sample}.log"
# 	params:
	wrapper:
		"0.77.0/bio/macs2/callpeak"

rule macs2_call_peaks_broad:
	input:
		unpack(get_macs2_input_broad)
	output:
		multiext("results/broad_peaks/{sample}",
                 "_peaks.xls",   ### required
                 ### optional output files
                 # these output extensions internally set the --bdg or -B option:
                 "_treat_pileup.bdg",
                 "_control_lambda.bdg",
                 # these output extensions internally set the --broad option:
                 "_peaks.broadPeak",
                 "_peaks.gappedPeak"
                 )
	log:
		"logs/macs2/callpeak_broad_{sample}.log"
# 	params:
	wrapper:
		"0.77.0/bio/macs2/callpeak"


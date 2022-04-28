rule macs2_call_peaks_narrow_se:
	input:
		unpack(get_macs2_input_narrow_se)
	output:
		multiext("results/peaks/individual/{sample}",
                 "_peaks.xls",   ### required
                 ### optional output files
                 "_peaks.narrowPeak",
                 "_summits.bed"
                 )
	log: 
		"logs/macs2/callpeak_narrow_{sample}.log"
	params: config["params"]["macs2_call_peaks_narrow_se"]
	wrapper:
		"v1.1.0/bio/macs2/callpeak"

rule macs2_call_peaks_broad_se:
	input:
		unpack(get_macs2_input_broad_se)
	output:
		multiext("results/peaks/individual/{sample}",
                 "_peaks.xls",   ### required
                 # these output extensions internally set the --broad option:
                 "_peaks.broadPeak",
                 "_peaks.gappedPeak"
                 )
	log:
		"logs/macs2/callpeak_broad_{sample}.log"
	params: config["params"]["macs2_call_peaks_broad_se"]
	wrapper:
		"v1.1.0/bio/macs2/callpeak"

rule macs2_call_peaks_narrow_pe:
	input:
		unpack(get_macs2_input_narrow_pe)
	output:
		multiext("results/peaks/individual/{sample}",
                 "_peaks.xls",   ### required
                 ### optional output files
                 "_peaks.narrowPeak",
                 "_summits.bed"
                 )
	log: 
		"logs/macs2/callpeak_narrow_{sample}.log"
	params: config["params"]["macs2_call_peaks_narrow_pe"]
	wrapper:
		"v1.1.0/bio/macs2/callpeak"

rule macs2_call_peaks_broad_pe:
	input:
		unpack(get_macs2_input_broad_pe)
	output:
		multiext("results/peaks/individual/{sample}",
                 "_peaks.xls",   ### required
                 # these output extensions internally set the --broad option:
                 "_peaks.broadPeak",
                 "_peaks.gappedPeak"
                 )
	log:
		"logs/macs2/callpeak_broad_{sample}.log"
	params: config["params"]["macs2_call_peaks_broad_pe"]
	wrapper:
		"v1.1.0/bio/macs2/callpeak"


